.class public Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;
.super Ljava/lang/Object;
.source "VoiceInfo.java"


# instance fields
.field private mRequestId:I

.field private mTtsContent:Ljava/lang/String;

.field private mVoiceCallback:Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;->mRequestId:I

    .line 9
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;->mTtsContent:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;->mVoiceCallback:Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;

    return-void
.end method


# virtual methods
.method public getRequestId()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;->mRequestId:I

    return v0
.end method

.method public getTtsContent()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;->mTtsContent:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceCallback()Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;->mVoiceCallback:Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;

    return-object v0
.end method

.method public setRequestId(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceInfo;->mRequestId:I

    return-void
.end method
