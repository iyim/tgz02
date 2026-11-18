.class public Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;
.super Ljava/lang/Object;
.source "VoiceCallback.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/tts/IVoiceListener;


# instance fields
.field private mCallback:Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;

.field private mListener:Lcom/alibaba/ailabs/geniesdk/tts/IVoiceListener;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/geniesdk/tts/IVoiceListener;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;->mListener:Lcom/alibaba/ailabs/geniesdk/tts/IVoiceListener;

    return-void
.end method

.method public constructor <init>(Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;->mCallback:Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;)V
    .locals 1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;->mCallback:Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0, p1}, Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;->onException(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;->mListener:Lcom/alibaba/ailabs/geniesdk/tts/IVoiceListener;

    if-eqz v0, :cond_1

    .line 60
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/geniesdk/tts/IVoiceListener;->onException(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTtsStart(Ljava/lang/String;)V
    .locals 1

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;->mCallback:Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, p1}, Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;->onTtsStart(Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;->mListener:Lcom/alibaba/ailabs/geniesdk/tts/IVoiceListener;

    if-eqz v0, :cond_1

    .line 26
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/geniesdk/tts/IVoiceListener;->onTtsStart(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTtsStop()V
    .locals 1

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;->mCallback:Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0}, Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;->onTtsStop()V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;->mListener:Lcom/alibaba/ailabs/geniesdk/tts/IVoiceListener;

    if-eqz v0, :cond_1

    .line 43
    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/tts/IVoiceListener;->onTtsStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
