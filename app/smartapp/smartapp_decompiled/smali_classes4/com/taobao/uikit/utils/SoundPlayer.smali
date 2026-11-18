.class public Lcom/taobao/uikit/utils/SoundPlayer;
.super Ljava/lang/Object;
.source "SoundPlayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundPlayer"

.field protected static _INSTANCE:Lcom/taobao/uikit/utils/SoundPlayer;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mScenesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mShoudPlay:Z

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundsLoaded:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mShoudPlay:Z

    .line 43
    iput-object p1, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/taobao/uikit/utils/SoundPlayer;->initSoundPool()V

    .line 45
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mScenesMap:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/taobao/uikit/utils/SoundPlayer;
    .locals 2

    .line 49
    sget-object v0, Lcom/taobao/uikit/utils/SoundPlayer;->_INSTANCE:Lcom/taobao/uikit/utils/SoundPlayer;

    if-nez v0, :cond_0

    .line 50
    const-class v0, Lcom/taobao/uikit/utils/SoundPlayer;

    monitor-enter v0

    .line 51
    :try_start_0
    new-instance v1, Lcom/taobao/uikit/utils/SoundPlayer;

    invoke-direct {v1, p0}, Lcom/taobao/uikit/utils/SoundPlayer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/taobao/uikit/utils/SoundPlayer;->_INSTANCE:Lcom/taobao/uikit/utils/SoundPlayer;

    .line 52
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 54
    :cond_0
    :goto_0
    sget-object p0, Lcom/taobao/uikit/utils/SoundPlayer;->_INSTANCE:Lcom/taobao/uikit/utils/SoundPlayer;

    return-object p0
.end method

.method private initSoundPool()V
    .locals 3

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x2

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 62
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xd

    .line 63
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v2, 0x4

    .line 64
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 66
    new-instance v2, Landroid/media/SoundPool$Builder;

    invoke-direct {v2}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 67
    invoke-virtual {v2, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    .line 68
    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    goto :goto_0

    .line 71
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/taobao/uikit/utils/SoundPlayer$1;

    invoke-direct {v1, p0}, Lcom/taobao/uikit/utils/SoundPlayer$1;-><init>(Lcom/taobao/uikit/utils/SoundPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mSoundsLoaded:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getSound(I)Ljava/lang/Object;
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mScenesMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mScenesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No sound has been registered with scene id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SoundPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public play(I)V
    .locals 7
    .param p1    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param

    .line 97
    iget-boolean v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mShoudPlay:Z

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/taobao/uikit/utils/SoundPlayer;->initSoundPool()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mSoundsLoaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mSoundsLoaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 104
    iget-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    return-void

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    .line 112
    iget-object v1, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mSoundsLoaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string p1, "SoundPlayer"

    const-string v0, "Sonification has been turn off"

    .line 115
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 8

    .line 124
    iget-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mSoundsLoaded:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mSoundsLoaded:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mSoundsLoaded:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public playScene(I)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mScenesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mScenesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 139
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 140
    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/utils/SoundPlayer;->play(I)V

    goto :goto_0

    .line 141
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 142
    nop

    nop

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/utils/SoundPlayer;->play(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sound with sceneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not binded"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SoundPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public register(II)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mScenesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sound has been registered for id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", will replace it"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mScenesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public register(ILjava/lang/String;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mScenesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sound has been registered for id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", will replace it"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 196
    :pswitch_0
    sget p2, Lcom/taobao/uikit/R$raw;->sound_page_success:I

    invoke-virtual {p0, p1, p2}, Lcom/taobao/uikit/utils/SoundPlayer;->register(II)V

    goto :goto_0

    .line 190
    :pswitch_1
    sget p2, Lcom/taobao/uikit/R$raw;->sound_page_success:I

    invoke-virtual {p0, p1, p2}, Lcom/taobao/uikit/utils/SoundPlayer;->register(II)V

    goto :goto_0

    .line 187
    :pswitch_2
    sget p2, Lcom/taobao/uikit/R$raw;->sound_like:I

    invoke-virtual {p0, p1, p2}, Lcom/taobao/uikit/utils/SoundPlayer;->register(II)V

    goto :goto_0

    .line 193
    :pswitch_3
    sget p2, Lcom/taobao/uikit/R$raw;->sound_add_to_cart:I

    invoke-virtual {p0, p1, p2}, Lcom/taobao/uikit/utils/SoundPlayer;->register(II)V

    goto :goto_0

    .line 184
    :pswitch_4
    sget p2, Lcom/taobao/uikit/R$raw;->sound_favorite:I

    invoke-virtual {p0, p1, p2}, Lcom/taobao/uikit/utils/SoundPlayer;->register(II)V

    goto :goto_0

    .line 181
    :pswitch_5
    sget p2, Lcom/taobao/uikit/R$raw;->sound_refresh:I

    invoke-virtual {p0, p1, p2}, Lcom/taobao/uikit/utils/SoundPlayer;->register(II)V

    goto :goto_0

    .line 178
    :pswitch_6
    sget p2, Lcom/taobao/uikit/R$raw;->sound_tap:I

    invoke-virtual {p0, p1, p2}, Lcom/taobao/uikit/utils/SoundPlayer;->register(II)V

    goto :goto_0

    .line 175
    :pswitch_7
    sget p2, Lcom/taobao/uikit/R$raw;->sound_push:I

    invoke-virtual {p0, p1, p2}, Lcom/taobao/uikit/utils/SoundPlayer;->register(II)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mScenesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 225
    iget-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mSoundsLoaded:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mSoundsLoaded:Ljava/util/HashMap;

    .line 227
    iput-object v0, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/taobao/uikit/utils/SoundPlayer;->mShoudPlay:Z

    return-void
.end method
