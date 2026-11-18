.class public Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;
.super Ljava/lang/Object;
.source "AudioRecordImp.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/record/IRecordDevice;


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioRecordImp"


# instance fields
.field protected audioFormat:I

.field protected audioRecord:Landroid/media/AudioRecord;

.field protected audioSource:I

.field protected bufferSizeInBytes:I

.field protected channel:I

.field protected sampleRateInHz:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->sampleRateInHz:I

    .line 18
    iput p2, p0, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->channel:I

    .line 19
    iput p3, p0, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->bufferSizeInBytes:I

    .line 20
    iput p5, p0, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->audioSource:I

    .line 21
    iput p4, p0, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->audioFormat:I

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->audioRecord:Landroid/media/AudioRecord;

    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->getAudioRecord(Z)Landroid/media/AudioRecord;

    move-result-object v0

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_0
    return-void
.end method

.method protected getAudioRecord(Z)Landroid/media/AudioRecord;
    .locals 6

    if-eqz p1, :cond_0

    .line 26
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->audioRecord:Landroid/media/AudioRecord;

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Landroid/media/AudioRecord;

    iget v1, p0, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->audioSource:I

    iget v2, p0, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->sampleRateInHz:I

    iget v3, p0, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->channel:I

    iget v4, p0, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->audioFormat:I

    iget v5, p0, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->bufferSizeInBytes:I

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->audioRecord:Landroid/media/AudioRecord;

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "audioSource = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->audioSource:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sampleRateInHz = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->sampleRateInHz:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",channel = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->channel:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",audioFormat = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->audioFormat:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",bufferSizeInBytes = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->bufferSizeInBytes:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioRecordImp"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->audioRecord:Landroid/media/AudioRecord;

    return-object p1
.end method

.method public init()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public read([BII)I
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->getAudioRecord(Z)Landroid/media/AudioRecord;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioRecord;->read([BII)I

    move-result p1

    return p1
.end method

.method public release()V
    .locals 2

    const-string v0, "AudioRecordImp"

    const-string v1, "release"

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->getAudioRecord(Z)Landroid/media/AudioRecord;

    move-result-object v0

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_0
    return-void
.end method

.method public startRecording()V
    .locals 1

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->getAudioRecord(Z)Landroid/media/AudioRecord;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    return-void
.end method

.method public stopRecording()V
    .locals 3

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/geniesdk/record/AudioRecordImp;->getAudioRecord(Z)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_0
    return-void
.end method
