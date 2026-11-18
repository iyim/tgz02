.class public Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;
.super Ljava/lang/Object;
.source "VoiceManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/tts/IVoice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager$VoiceManagerHolder;
    }
.end annotation


# static fields
.field public static final PLAY_STATUS_COMPLETE:I = 0xc

.field public static final PLAY_STATUS_FINISH:I = 0x1

.field public static final PLAY_STATUS_PLAYING:I = 0x0

.field public static final PLAY_STATUS_PREPARED:I = 0xd

.field public static final PLAY_STATUS_STOP:I = 0x8

.field private static final STATUS_EXCEPTION:I = 0x3

.field private static final STATUS_START:I = 0x1

.field private static final STATUS_STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VoiceManager"


# instance fields
.field private mPreviousEndTtsId:I

.field private mTtsId:I

.field private mVoiceInfo:Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->mVoiceInfo:Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->mPreviousEndTtsId:I

    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;
    .locals 1

    .line 26
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager$VoiceManagerHolder;->access$000()Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;

    move-result-object v0

    return-object v0
.end method

.method private onEnd(ZZ)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->mVoiceInfo:Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;

    .line 62
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 64
    iput-object v1, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->mVoiceInfo:Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;

    .line 65
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;->getRequestId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->stopTts(I)V

    if-eqz p2, :cond_1

    .line 68
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;->getVoiceCallback()Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;

    move-result-object p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "1"

    .line 71
    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;->onException(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;->onTtsStop()V

    :cond_1
    :goto_0
    return-void
.end method

.method private onNotify(Landroid/content/Context;II)V
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0xd

    if-eq p3, v3, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0xc

    if-eq p3, v3, :cond_2

    const/16 v3, 0x8

    if-eq p3, v3, :cond_2

    if-ne p3, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x2

    .line 149
    :cond_3
    :goto_1
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v3, "content://com.alibaba.ailabs.genie.assistant.provider/GenieApi/"

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "?status="

    .line 151
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string v3, "VoiceManager"

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNotify id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, p3, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    if-eq v2, v0, :cond_4

    if-ne v2, v1, :cond_5

    .line 162
    :cond_4
    iput p2, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->mPreviousEndTtsId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public getPreviousEndTtsId()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->mPreviousEndTtsId:I

    return v0
.end method

.method public onTtsEnd(I)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->mVoiceInfo:Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;->getRequestId()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 94
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;->getVoiceCallback()Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;->onTtsStop()V

    :cond_0
    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->mVoiceInfo:Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;

    :cond_1
    return-void
.end method

.method public onTtsError(I)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->mVoiceInfo:Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;->getRequestId()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 105
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;->getVoiceCallback()Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "1"

    .line 107
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;->onException(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->mVoiceInfo:Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;

    :cond_1
    return-void
.end method

.method public onTtsStart(I)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->mVoiceInfo:Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;->getRequestId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;->getVoiceCallback()Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;->getTtsContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;->onTtsStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTtsStatus(Landroid/content/Context;II)V
    .locals 1

    if-lez p2, :cond_0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->onNotify(Landroid/content/Context;II)V

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->mVoiceInfo:Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;

    if-eqz p1, :cond_5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 122
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;->getRequestId()I

    move-result p2

    :cond_1
    const/16 p1, 0xd

    if-ne p3, p1, :cond_2

    .line 125
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->onTtsStart(I)V

    goto :goto_1

    :cond_2
    const/16 p1, 0xc

    if-eq p3, p1, :cond_4

    const/16 p1, 0x8

    if-ne p3, p1, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_5

    .line 129
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->onTtsError(I)V

    goto :goto_1

    .line 127
    :cond_4
    :goto_0
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->onTtsEnd(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public playTts(Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;)I
    .locals 1

    .line 180
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 186
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->playTts(Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;)I

    move-result p1

    .line 188
    const-class v0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;

    monitor-enter v0

    .line 190
    :try_start_0
    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->mTtsId:I

    .line 191
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public playTts(Ljava/lang/String;Z)I
    .locals 1

    .line 171
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;-><init>()V

    .line 172
    iput-boolean p2, v0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->isOpenMic:Z

    .line 173
    iput-object p1, v0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->text:Ljava/lang/String;

    .line 175
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->playTts(Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;)I

    move-result p1

    return p1
.end method

.method public playVoice(Ljava/lang/String;Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;)I
    .locals 2

    const/4 v0, 0x1

    .line 35
    invoke-direct {p0, v0, v0}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->onEnd(ZZ)V

    .line 36
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->playTts(Ljava/lang/String;Z)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 45
    new-instance v1, Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;

    invoke-direct {v1, p1, p2}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;-><init>(Ljava/lang/String;Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;)V

    .line 46
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;->setRequestId(I)V

    .line 48
    iput-object v1, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->mVoiceInfo:Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;

    return v0

    :cond_1
    return v1
.end method

.method public stopTts(I)V
    .locals 2

    .line 201
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 206
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->stopTts(I)V

    .line 210
    const-class v0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;

    monitor-enter v0

    if-ltz p1, :cond_1

    .line 211
    :try_start_0
    iget v1, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->mTtsId:I

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 p1, -0x1

    .line 213
    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->mTtsId:I

    .line 215
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopVoice(I)V
    .locals 0

    const/4 p1, 0x0

    .line 57
    invoke-direct {p0, p1, p1}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->onEnd(ZZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
