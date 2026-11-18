.class public Lcom/taobao/tao/util/TBSoundPlayer;
.super Ljava/lang/Object;
.source "TBSoundPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tao/util/TBSoundPlayer$Scene;
    }
.end annotation


# static fields
.field private static final SETTINGS_SYSTEM_MESSAGE_SOUND:Ljava/lang/String; = "systemMessageSound"

.field private static final SETTINGS_SYSTEM_SOUND:Ljava/lang/String; = "systemSound"

.field private static _INSTANCE:Lcom/taobao/tao/util/TBSoundPlayer; = null

.field private static sOnlineConfig:Z = true

.field private static sSceneConfigMap:Ljava/util/HashMap;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnable:Z

.field private mIsTouchSoundsEnabled:Z

.field private mMessageEnable:Z

.field private mRealPlayer:Lcom/taobao/uikit/utils/SoundPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/taobao/tao/util/TBSoundPlayer$1;

    invoke-direct {v0}, Lcom/taobao/tao/util/TBSoundPlayer$1;-><init>()V

    sput-object v0, Lcom/taobao/tao/util/TBSoundPlayer;->sSceneConfigMap:Ljava/util/HashMap;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 6

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mEnable:Z

    .line 35
    iput-boolean v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mMessageEnable:Z

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mIsTouchSoundsEnabled:Z

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.app.ActivityThread"

    .line 70
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "currentActivityThread"

    .line 72
    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "mInitialApplication"

    .line 73
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 74
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 75
    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 79
    check-cast v3, Landroid/app/Application;

    iput-object v3, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 82
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    iput-object v2, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mContext:Landroid/content/Context;

    .line 86
    :goto_0
    iget-object v2, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/uikit/utils/SoundPlayer;->getInstance(Landroid/content/Context;)Lcom/taobao/uikit/utils/SoundPlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mRealPlayer:Lcom/taobao/uikit/utils/SoundPlayer;

    .line 88
    iget-object v2, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mRealPlayer:Lcom/taobao/uikit/utils/SoundPlayer;

    sget v3, Lcom/taobao/uikit/R$raw;->sound_push:I

    invoke-virtual {v2, v1, v3}, Lcom/taobao/uikit/utils/SoundPlayer;->register(II)V

    .line 89
    iget-object v1, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mRealPlayer:Lcom/taobao/uikit/utils/SoundPlayer;

    sget v2, Lcom/taobao/uikit/R$raw;->sound_tap:I

    invoke-virtual {v1, v0, v2}, Lcom/taobao/uikit/utils/SoundPlayer;->register(II)V

    .line 90
    iget-object v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mRealPlayer:Lcom/taobao/uikit/utils/SoundPlayer;

    const/4 v1, 0x2

    sget v2, Lcom/taobao/uikit/R$raw;->sound_refresh:I

    invoke-virtual {v0, v1, v2}, Lcom/taobao/uikit/utils/SoundPlayer;->register(II)V

    .line 91
    iget-object v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mRealPlayer:Lcom/taobao/uikit/utils/SoundPlayer;

    const/4 v1, 0x3

    sget v2, Lcom/taobao/uikit/R$raw;->sound_favorite:I

    invoke-virtual {v0, v1, v2}, Lcom/taobao/uikit/utils/SoundPlayer;->register(II)V

    .line 92
    iget-object v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mRealPlayer:Lcom/taobao/uikit/utils/SoundPlayer;

    const/4 v1, 0x5

    sget v2, Lcom/taobao/uikit/R$raw;->sound_like:I

    invoke-virtual {v0, v1, v2}, Lcom/taobao/uikit/utils/SoundPlayer;->register(II)V

    .line 93
    iget-object v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mRealPlayer:Lcom/taobao/uikit/utils/SoundPlayer;

    const/4 v1, 0x6

    sget v2, Lcom/taobao/uikit/R$raw;->sound_page_success:I

    invoke-virtual {v0, v1, v2}, Lcom/taobao/uikit/utils/SoundPlayer;->register(II)V

    .line 94
    iget-object v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mRealPlayer:Lcom/taobao/uikit/utils/SoundPlayer;

    const/4 v1, 0x4

    sget v2, Lcom/taobao/uikit/R$raw;->sound_add_to_cart:I

    invoke-virtual {v0, v1, v2}, Lcom/taobao/uikit/utils/SoundPlayer;->register(II)V

    .line 95
    iget-object v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mRealPlayer:Lcom/taobao/uikit/utils/SoundPlayer;

    const/4 v1, 0x7

    sget v2, Lcom/taobao/uikit/R$raw;->sound_page_success:I

    invoke-virtual {v0, v1, v2}, Lcom/taobao/uikit/utils/SoundPlayer;->register(II)V

    return-void
.end method

.method public static getConfigMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/taobao/tao/util/TBSoundPlayer;->sSceneConfigMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance()Lcom/taobao/tao/util/TBSoundPlayer;
    .locals 2

    .line 59
    sget-object v0, Lcom/taobao/tao/util/TBSoundPlayer;->_INSTANCE:Lcom/taobao/tao/util/TBSoundPlayer;

    if-nez v0, :cond_0

    .line 60
    const-class v0, Lcom/taobao/tao/util/TBSoundPlayer;

    monitor-enter v0

    .line 61
    :try_start_0
    new-instance v1, Lcom/taobao/tao/util/TBSoundPlayer;

    invoke-direct {v1}, Lcom/taobao/tao/util/TBSoundPlayer;-><init>()V

    sput-object v1, Lcom/taobao/tao/util/TBSoundPlayer;->_INSTANCE:Lcom/taobao/tao/util/TBSoundPlayer;

    .line 62
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 64
    :cond_0
    :goto_0
    sget-object v0, Lcom/taobao/tao/util/TBSoundPlayer;->_INSTANCE:Lcom/taobao/tao/util/TBSoundPlayer;

    return-object v0
.end method

.method public static setOnlineConfig(Z)V
    .locals 0

    .line 104
    sput-boolean p0, Lcom/taobao/tao/util/TBSoundPlayer;->sOnlineConfig:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getSound(I)Ljava/lang/Object;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mRealPlayer:Lcom/taobao/uikit/utils/SoundPlayer;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/utils/SoundPlayer;->getSound(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public play(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param

    .line 112
    invoke-virtual {p0}, Lcom/taobao/tao/util/TBSoundPlayer;->shouldPlaySound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mRealPlayer:Lcom/taobao/uikit/utils/SoundPlayer;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/utils/SoundPlayer;->play(I)V

    :cond_0
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/taobao/tao/util/TBSoundPlayer;->shouldPlaySound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mRealPlayer:Lcom/taobao/uikit/utils/SoundPlayer;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/utils/SoundPlayer;->play(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public playScene(I)V
    .locals 1

    .line 132
    invoke-virtual {p0, p1}, Lcom/taobao/tao/util/TBSoundPlayer;->shouldPlayScene(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mRealPlayer:Lcom/taobao/uikit/utils/SoundPlayer;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/utils/SoundPlayer;->playScene(I)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mRealPlayer:Lcom/taobao/uikit/utils/SoundPlayer;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/SoundPlayer;->release()V

    return-void
.end method

.method protected shouldPlayScene(I)Z
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 170
    sget-boolean p1, Lcom/taobao/tao/util/TBSoundPlayer;->sOnlineConfig:Z

    return p1

    .line 175
    :cond_0
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "systemSound"

    .line 178
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 181
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mEnable:Z

    :cond_1
    const-string v1, "systemMessageSound"

    .line 185
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mMessageEnable:Z

    .line 188
    iget-object v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_effects_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mIsTouchSoundsEnabled:Z

    if-nez p1, :cond_3

    .line 193
    iget-boolean p1, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mMessageEnable:Z

    return p1

    :cond_3
    if-eqz v2, :cond_4

    .line 199
    iget-boolean v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mEnable:Z

    goto :goto_1

    .line 201
    :cond_4
    sget-boolean v0, Lcom/taobao/tao/util/TBSoundPlayer;->sOnlineConfig:Z

    :goto_1
    if-eqz v0, :cond_6

    .line 205
    iget-boolean v2, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mIsTouchSoundsEnabled:Z

    if-eqz v2, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x7

    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    :cond_6
    :goto_2
    return v0
.end method

.method protected shouldPlaySound()Z
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 144
    sget-boolean v0, Lcom/taobao/tao/util/TBSoundPlayer;->sOnlineConfig:Z

    return v0

    .line 149
    :cond_0
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "systemSound"

    .line 152
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 155
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mEnable:Z

    .line 156
    iget-boolean v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mEnable:Z

    return v0

    .line 158
    :cond_1
    sget-boolean v0, Lcom/taobao/tao/util/TBSoundPlayer;->sOnlineConfig:Z

    return v0
.end method

.method public updateSound(ILjava/lang/Object;)V
    .locals 1

    .line 238
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mRealPlayer:Lcom/taobao/uikit/utils/SoundPlayer;

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/taobao/uikit/utils/SoundPlayer;->register(II)V

    goto :goto_0

    .line 240
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/taobao/tao/util/TBSoundPlayer;->mRealPlayer:Lcom/taobao/uikit/utils/SoundPlayer;

    nop

    nop

    invoke-virtual {v0, p1, p2}, Lcom/taobao/uikit/utils/SoundPlayer;->register(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
