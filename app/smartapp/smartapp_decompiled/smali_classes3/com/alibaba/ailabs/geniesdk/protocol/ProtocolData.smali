.class public Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;
.super Ljava/lang/Object;
.source "ProtocolData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData$EmotionType;,
        Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData$DataCode;,
        Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData$NluMode;,
        Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData$DataType;
    }
.end annotation


# static fields
.field public static final FLAG_SEARCH_BACKUP:I = 0x2

.field public static final FLAG_SEARCH_NORMAL:I = 0x0

.field public static final FLAG_SEARCH_REC:I = 0x1


# instance fields
.field private asrLogId:Ljava/lang/String;

.field private code:I

.field private commandId:Ljava/lang/String;

.field private data:Ljava/lang/Object;

.field private domain:Ljava/lang/String;

.field private emotion:I

.field private extraData:Ljava/lang/Object;

.field private flag:I

.field private hasCommand:Z

.field private hasResultList:Z

.field private intent:Ljava/lang/String;

.field private isCombinedStatus:Z

.field private mFullScreen:Z

.field private mIsWakeupFree:Z

.field private mTips:Ljava/lang/String;

.field private needFeedback:Z

.field private needTts:Z

.field private nlpTime:I

.field private nluData:Ljava/lang/String;

.field private nluMode:I

.field private openFarMic:Z

.field private parserTime:I

.field private queryMakeSense:Z

.field private question:Ljava/lang/String;

.field private recordTime:J

.field private retCode:I

.field private serviceCode:Ljava/lang/String;

.field private spokenText:Ljava/lang/String;

.field private streamFirstTime:I

.field private talkStartTime:I

.field private traceId:Ljava/lang/String;

.field private ttsDigest:Ljava/lang/String;

.field private type:I

.field private uiData:Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolUIData;

.field private voiceId:Ljava/lang/String;

.field private wakeupType:I

.field private writtenText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->code:I

    .line 92
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->type:I

    .line 110
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->emotion:I

    .line 131
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->nluMode:I

    .line 142
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->retCode:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->code:I

    .line 92
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->type:I

    .line 110
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->emotion:I

    .line 131
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->nluMode:I

    .line 142
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->retCode:I

    .line 179
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->setCode(I)V

    return-void
.end method

.method private setTime(IIII)V
    .locals 0

    .line 467
    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->talkStartTime:I

    .line 468
    iput p2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->streamFirstTime:I

    .line 469
    iput p3, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->nlpTime:I

    .line 470
    iput p4, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->parserTime:I

    return-void
.end method


# virtual methods
.method public feedbackToUI(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 474
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->setSpokenTextWhenNull(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->setWrittenText(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->setData(Ljava/lang/Object;)V

    .line 478
    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->setOpenFarMic(Z)V

    const/4 p1, 0x4

    .line 479
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->setType(I)V

    return-void
.end method

.method public getAsrLogId()Ljava/lang/String;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->asrLogId:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->code:I

    return v0
.end method

.method public getCommandId()Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->commandId:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getEmotion()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->emotion:I

    return v0
.end method

.method public getExtraData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->extraData:Ljava/lang/Object;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .line 330
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->flag:I

    return v0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->intent:Ljava/lang/String;

    return-object v0
.end method

.method public getNlpTime()I
    .locals 1

    .line 445
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->nlpTime:I

    return v0
.end method

.method public getNluData()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->nluData:Ljava/lang/String;

    return-object v0
.end method

.method public getNluMode()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->nluMode:I

    return v0
.end method

.method public getParserTime()I
    .locals 1

    .line 449
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->parserTime:I

    return v0
.end method

.method public getQuestion()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->question:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordTime()J
    .locals 2

    .line 307
    iget-wide v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->recordTime:J

    return-wide v0
.end method

.method public getRetCode()I
    .locals 1

    .line 338
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->retCode:I

    return v0
.end method

.method public getServiceCode()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->serviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSpokenText()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->spokenText:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamFirstTime()I
    .locals 1

    .line 441
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->streamFirstTime:I

    return v0
.end method

.method public getTalkStartTime()I
    .locals 1

    .line 437
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->talkStartTime:I

    return v0
.end method

.method public getTips()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->mTips:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->traceId:Ljava/lang/String;

    return-object v0
.end method

.method public getTtsDigest()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->ttsDigest:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->type:I

    return v0
.end method

.method public getUiData()Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolUIData;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->uiData:Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolUIData;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolUIData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolUIData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->uiData:Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolUIData;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->uiData:Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolUIData;

    return-object v0
.end method

.method public getVoiceId()Ljava/lang/String;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->voiceId:Ljava/lang/String;

    return-object v0
.end method

.method public getWakeupType()I
    .locals 1

    .line 247
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->wakeupType:I

    return v0
.end method

.method public getWrittenText()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->writtenText:Ljava/lang/String;

    return-object v0
.end method

.method public isCombinedStatus()Z
    .locals 1

    .line 461
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->isCombinedStatus:Z

    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    .line 387
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->mFullScreen:Z

    return v0
.end method

.method public isHasCommand()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->hasCommand:Z

    return v0
.end method

.method public isHasResultList()Z
    .locals 1

    .line 429
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->hasResultList:Z

    return v0
.end method

.method public isNeedFeedback()Z
    .locals 1

    .line 453
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->needFeedback:Z

    return v0
.end method

.method public isNeedTts()Z
    .locals 1

    .line 354
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->needTts:Z

    return v0
.end method

.method public isOpenFarMic()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->openFarMic:Z

    return v0
.end method

.method public isWakeupFree()Z
    .locals 1

    .line 377
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->mIsWakeupFree:Z

    return v0
.end method

.method public queryMakeSense()Z
    .locals 1

    .line 464
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->queryMakeSense:Z

    return v0
.end method

.method public setAsrLogId(Ljava/lang/String;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->asrLogId:Ljava/lang/String;

    return-void
.end method

.method public setCode(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->code:I

    return-void
.end method

.method public setCommandId(Ljava/lang/String;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->commandId:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->data:Ljava/lang/Object;

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 2

    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->domain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->domain:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    .line 253
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->domain:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setEmotion(I)V
    .locals 0

    .line 219
    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->emotion:I

    return-void
.end method

.method public setExtraData(Ljava/lang/Object;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->extraData:Ljava/lang/Object;

    return-void
.end method

.method public setFlag(I)V
    .locals 0

    .line 334
    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->flag:I

    return-void
.end method

.method public setFullScreen(Z)V
    .locals 0

    .line 383
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->mFullScreen:Z

    return-void
.end method

.method public setHasCommand(Z)V
    .locals 0

    .line 187
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->hasCommand:Z

    return-void
.end method

.method public setHasResultList(Z)V
    .locals 0

    .line 433
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->hasResultList:Z

    return-void
.end method

.method public setIntent(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->intent:Ljava/lang/String;

    return-void
.end method

.method public setNeedFeedback(Z)V
    .locals 0

    .line 457
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->needFeedback:Z

    return-void
.end method

.method public setNeedTts(Z)V
    .locals 0

    .line 358
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->needTts:Z

    return-void
.end method

.method public setNluData(Ljava/lang/String;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->nluData:Ljava/lang/String;

    return-void
.end method

.method public setNluMode(I)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->nluMode:I

    return-void
.end method

.method public setOpenFarMic(Z)V
    .locals 0

    .line 195
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->openFarMic:Z

    return-void
.end method

.method public setQuestion(Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->question:Ljava/lang/String;

    return-void
.end method

.method public setRecordTime(J)V
    .locals 0

    .line 311
    iput-wide p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->recordTime:J

    return-void
.end method

.method public setRetCode(I)V
    .locals 0

    .line 342
    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->retCode:I

    return-void
.end method

.method public setServiceCode(Ljava/lang/String;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->serviceCode:Ljava/lang/String;

    return-void
.end method

.method public setSpokenText(Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->spokenText:Ljava/lang/String;

    return-void
.end method

.method public setSpokenTextWhenNull(Ljava/lang/String;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->spokenText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->spokenText:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->mTips:Ljava/lang/String;

    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->traceId:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 227
    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->type:I

    return-void
.end method

.method public setVoiceId(Ljava/lang/String;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->voiceId:Ljava/lang/String;

    return-void
.end method

.method public setWakeupFree(Z)V
    .locals 0

    .line 373
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->mIsWakeupFree:Z

    return-void
.end method

.method public setWrittenText(Ljava/lang/String;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->writtenText:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtocolData{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->code:I

    .line 485
    invoke-static {v1}, Lcom/alibaba/ailabs/geniesdk/protocol/ReturnCode;->description(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", question=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->question:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", domain=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", intent=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->intent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", spokenText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->spokenText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", writtenText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->writtenText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", emotion="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->emotion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", data="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->data:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", extraData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->extraData:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", recordTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->recordTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", hasCommand="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->hasCommand:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", openFarMic="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->openFarMic:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", nluMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->nluMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uiData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->uiData:Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolUIData;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", serviceCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->serviceCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", flag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->flag:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", retCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->retCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", nluData=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->nluData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", needTts="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->needTts:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", voiceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->voiceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", commandId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->commandId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", traceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->traceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", asrLogId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->asrLogId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", talkStartTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->talkStartTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", streamFirstTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->streamFirstTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", nlpTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->nlpTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", parserTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->parserTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsWakeupFree="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->mIsWakeupFree:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mFullScreen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->mFullScreen:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", wakeupType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->wakeupType:I

    .line 515
    invoke-static {v2}, Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;->getDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mTips=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->mTips:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", hasResultList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->hasResultList:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", queryMakeSense="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->queryMakeSense:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
