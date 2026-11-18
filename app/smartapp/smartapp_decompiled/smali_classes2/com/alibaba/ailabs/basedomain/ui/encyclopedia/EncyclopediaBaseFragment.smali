.class public abstract Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;
.super Lcom/alibaba/ailabs/basedomain/common/BaseFragment;
.source "EncyclopediaBaseFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/ui/IBaseUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$IOnAutoScrollListener;
    }
.end annotation


# static fields
.field protected static final AUTO_ROLL_TEXT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EncyclopediaBaseFragment"


# instance fields
.field private isInterrupted:Z

.field protected mBackgroundBitmap:Landroid/graphics/Bitmap;

.field protected mBackgroundView:Landroid/view/View;

.field protected mBlurBackgroundTask:Ljava/lang/Runnable;

.field protected mContext:Landroid/content/Context;

.field protected mData:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;

.field private mIOnAutoScrollListener:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$IOnAutoScrollListener;

.field protected mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

.field protected mScrollView:Landroid/widget/ScrollView;

.field protected mSessionId:I

.field protected volatile mStopAutoRoll:Z

.field protected mText:Landroid/widget/TextView;

.field private mTttListener:Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private needUt:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mStopAutoRoll:Z

    .line 49
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->needUt:Z

    .line 51
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    .line 183
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mBlurBackgroundTask:Ljava/lang/Runnable;

    .line 244
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$3;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mTttListener:Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;

    return-void
.end method


# virtual methods
.method protected autoRollText()V
    .locals 6

    .line 138
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\p{P}"

    const-string v3, ""

    .line 140
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 142
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    .line 143
    div-int/2addr v0, v2

    int-to-double v2, v0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    .line 144
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 145
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    mul-int/lit8 v0, v0, 0xa

    div-int v0, v2, v0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mScrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const-wide/16 v4, 0x5a

    invoke-virtual {v0, v1, v4, v5}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 151
    iput-boolean v3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mStopAutoRoll:Z

    goto :goto_0

    :cond_1
    const-string v0, "EncyclopediaBaseFragment"

    const-string v2, "No need roll"

    .line 160
    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iput-boolean v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mStopAutoRoll:Z

    .line 162
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mIOnAutoScrollListener:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$IOnAutoScrollListener;

    if-eqz v0, :cond_2

    .line 163
    invoke-interface {v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$IOnAutoScrollListener;->scrollFinish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getDomainType()Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;
    .locals 1

    .line 132
    sget-object v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->ENCYCLOPEDIA:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 68
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mContext:Landroid/content/Context;

    :goto_0
    const-string p2, "EncyclopediaBaseFragment"

    const-string p3, "onCreateView"

    .line 73
    invoke-static {p2, p3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EncyclopediaBaseFragment bundle:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string p3, "data"

    .line 76
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;

    .line 77
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;

    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getSessionId()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mSessionId:I

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object p1

    iget p3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mSessionId:I

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mTttListener:Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;

    invoke-virtual {p1, p3, v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->registerTTSStatusCallback(ILcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;)V

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Encyclopedia data:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p3, "No extra find "

    invoke-static {p2, p3, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->isInterrupted:Z

    .line 86
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->acquireWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 178
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/common/BaseFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 111
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/common/BaseFragment;->onPause()V

    const-string v0, "EncyclopediaBaseFragment"

    const-string v1, "onPause"

    .line 112
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onResume()V
    .locals 0

    .line 106
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/common/BaseFragment;->onResume()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onStop()V
    .locals 3

    .line 117
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/common/BaseFragment;->onStop()V

    const-string v0, "EncyclopediaBaseFragment"

    const-string v1, "onStop"

    .line 118
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->onUserInterruptPage()Z

    .line 120
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->stopRollText()V

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mSessionId:I

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mTttListener:Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->unregisterTTSStatusCallback(ILcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;)V

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method protected onUserInterruptPage()Z
    .locals 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncyclopediaBaseFragment onUserInterruptPage, isInterrupted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->isInterrupted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EncyclopediaBaseFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->isInterrupted:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->isInterrupted:Z

    const-string v0, "EncyclopediaBaseFragment onUserInterruptPage, stop tts and stop auto roll"

    .line 95
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mSessionId:I

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->stopTTS(I)V

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->stopRollText()V

    :cond_0
    return v2
.end method

.method protected stopRollText()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    .line 170
    iput-boolean v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mStopAutoRoll:Z

    .line 171
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mIOnAutoScrollListener:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$IOnAutoScrollListener;

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$IOnAutoScrollListener;->scrollFinish()V

    :cond_0
    return-void
.end method
