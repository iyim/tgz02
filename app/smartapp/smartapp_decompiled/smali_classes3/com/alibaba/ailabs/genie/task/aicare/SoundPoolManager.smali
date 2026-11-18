.class public Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;
.super Ljava/lang/Object;
.source "SoundPoolManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskService-Sound"

.field private static instance:Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;


# instance fields
.field private actualVolume:F

.field private audioManager:Landroid/media/AudioManager;

.field private loaded:Z

.field private maxVolume:F

.field private playing:Z

.field private ringingStreamId:I

.field private sound1:I

.field private sound2:I

.field private soundPool:Landroid/media/SoundPool;

.field private volume:F


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->playing:Z

    .line 19
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->loaded:Z

    const-string v1, "audio"

    .line 36
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->audioManager:Landroid/media/AudioManager;

    .line 37
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->actualVolume:F

    .line 38
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->maxVolume:F

    .line 39
    iget v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->actualVolume:F

    iget v3, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->maxVolume:F

    div-float/2addr v1, v3

    iput v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->volume:F

    .line 41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    const/16 v4, 0x15

    if-lt v1, v4, :cond_0

    .line 42
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->soundPool:Landroid/media/SoundPool;

    goto :goto_0

    .line 44
    :cond_0
    new-instance v1, Landroid/media/SoundPool;

    invoke-direct {v1, v3, v2, v0}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->soundPool:Landroid/media/SoundPool;

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->soundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager$1;-><init>(Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->soundPool:Landroid/media/SoundPool;

    sget v1, Lcom/alibaba/ailabs/genie/task/R$raw;->sound1:I

    invoke-virtual {v0, p1, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->sound1:I

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->soundPool:Landroid/media/SoundPool;

    sget v1, Lcom/alibaba/ailabs/genie/task/R$raw;->sound2:I

    invoke-virtual {v0, p1, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->sound2:I

    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->loaded:Z

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;
    .locals 1

    .line 58
    sget-object v0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->instance:Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->instance:Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;

    .line 61
    :cond_0
    sget-object p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->instance:Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;

    return-object p0
.end method


# virtual methods
.method public playSound(Z)Z
    .locals 9

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play1 low="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskService-Sound"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->stopRinging()V

    .line 67
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->loaded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->playing:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 68
    :goto_0
    iput v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->volume:F

    .line 69
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->soundPool:Landroid/media/SoundPool;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->sound1:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->sound2:I

    :goto_1
    move v3, p1

    iget v5, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->volume:F

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v4, v5

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->ringingStreamId:I

    .line 70
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->playing:Z

    :cond_2
    return v1
.end method

.method public release()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->soundPool:Landroid/media/SoundPool;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 84
    iget v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->sound1:I

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->soundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->sound2:I

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 87
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->soundPool:Landroid/media/SoundPool;

    .line 89
    :cond_0
    sput-object v1, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->instance:Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;

    return-void
.end method

.method public stopRinging()V
    .locals 2

    .line 76
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->playing:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->ringingStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    :cond_0
    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->playing:Z

    return-void
.end method
