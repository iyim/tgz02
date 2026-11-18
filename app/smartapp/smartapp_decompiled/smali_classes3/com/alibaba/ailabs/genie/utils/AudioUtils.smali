.class public final Lcom/alibaba/ailabs/genie/utils/AudioUtils;
.super Ljava/lang/Object;
.source "AudioUtils.java"


# static fields
.field private static sAudioManagerSoftRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/media/AudioManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static covertVolumeWithDb(I)F
    .locals 4

    int-to-float p0, p0

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 116
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    const/4 v0, 0x0

    .line 117
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 118
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 123
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getAudioManager()Landroid/media/AudioManager;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 23
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/AudioUtils;->sAudioManagerSoftRef:Ljava/lang/ref/SoftReference;

    const-string v1, "audio"

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AudioUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 25
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/utils/AudioUtils;->sAudioManagerSoftRef:Ljava/lang/ref/SoftReference;

    return-object v0

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 31
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AudioUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    :cond_1
    return-object v0
.end method

.method public static getCurAudioFocusName()Ljava/lang/String;
    .locals 5

    .line 67
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AudioUtils;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "getCurrentAudioFocusName"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 71
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lcom/alibaba/ailabs/genie/utils/misc/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public static getCurMusicVolume()I
    .locals 2

    .line 85
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AudioUtils;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v1, 0x3

    .line 88
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public static getMaxMusicVolume()I
    .locals 2

    .line 92
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AudioUtils;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v1, 0x3

    .line 95
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public static giveUpAudioFocus()Z
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/AudioUtils;->giveUpAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    move-result v0

    return v0
.end method

.method public static giveUpAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .locals 2
    .param p0    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AudioUtils;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 62
    :cond_0
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasAudioFocus()Z
    .locals 2

    .line 78
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AudioUtils;->getCurAudioFocusName()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AudioUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setMusicStreamVolume(I)V
    .locals 3

    .line 99
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AudioUtils;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 103
    :try_start_0
    invoke-virtual {v0, v1, p0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static tryToGetAudioFocus()Z
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/AudioUtils;->tryToGetAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    move-result v0

    return v0
.end method

.method public static tryToGetAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .locals 4
    .param p0    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 43
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AudioUtils;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 46
    invoke-virtual {v0, p0, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p0

    if-ne p0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
