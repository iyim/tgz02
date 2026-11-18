.class public Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;
.super Ljava/lang/Object;
.source "FocusMgr.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/focus/IFocus;
.implements Lcom/alibaba/ailabs/geniesdk/focus/IFocusListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_requestFocus:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FocusMgr_Java"


# instance fields
.field private mAudioFocus:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mFocusRequest:Landroid/media/AudioFocusRequest;

.field private mHandler:Landroid/os/Handler;

.field private mIFocusListener:Lcom/alibaba/ailabs/geniesdk/focus/IFocusListener;

.field private mOnChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mAudioFocus:I

    .line 102
    new-instance v1, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr$1;-><init>(Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mOnChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const-string v1, "audio"

    .line 42
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mAudioManager:Landroid/media/AudioManager;

    .line 44
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_0

    .line 45
    new-instance p1, Landroid/media/AudioFocusRequest$Builder;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 46
    invoke-virtual {p1, v0}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 47
    invoke-virtual {p1, v0}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mOnChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 48
    invoke-virtual {p1, v0}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mFocusRequest:Landroid/media/AudioFocusRequest;

    .line 51
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;I)I
    .locals 0

    .line 14
    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mAudioFocus:I

    return p1
.end method

.method private getAudioFocus()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 155
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mOnChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v0, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 163
    :cond_0
    iput v1, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mAudioFocus:I

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 161
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    iput v1, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mAudioFocus:I

    return v0

    :goto_0
    iput v1, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mAudioFocus:I

    throw v0
.end method

.method private processRequestFocus(II)Z
    .locals 6

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    const-string v2, ", reason = "

    const-string v3, "FocusMgr_Java"

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestFocus get focus, status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->getAudioFocus()Z

    move-result p2

    goto :goto_0

    .line 75
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestFocus release focus, status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->releaseAudioFocus()Z

    move-result p2

    .line 81
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestFocus status = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", time = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 28
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 31
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 33
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->processRequestFocus(II)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hasAudioFocus()Z
    .locals 3

    .line 194
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mAudioFocus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public onFocusChange(I)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mIFocusListener:Lcom/alibaba/ailabs/geniesdk/focus/IFocusListener;

    .line 95
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/geniesdk/focus/IFocusListener;->onFocusChange(I)V

    return-void
.end method

.method public releaseAudioFocus()Z
    .locals 3

    const/4 v0, 0x0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mOnChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 183
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mAudioFocus:I

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 181
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mAudioFocus:I

    return v0

    :goto_0
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mAudioFocus:I

    throw v1
.end method

.method public requestFocus(II)Z
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 59
    iget-object p2, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public setFocusListener(Lcom/alibaba/ailabs/geniesdk/focus/IFocusListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;->mIFocusListener:Lcom/alibaba/ailabs/geniesdk/focus/IFocusListener;

    return-void
.end method
