.class public Lcom/alibaba/ailabs/genie/musicplayer/voice/processor/VideoControlProcessor;
.super Ljava/lang/Object;
.source "VideoControlProcessor.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/voice/processor/IProcessor;


# static fields
.field private static final COMMAND_NAME_FAST_BACKWARD:Ljava/lang/String; = "/FastBackward"

.field private static final COMMAND_NAME_FAST_FORWARD:Ljava/lang/String; = "/FastForward"

.field private static final COMMAND_NAME_NEXT:Ljava/lang/String; = "/Next"

.field private static final COMMAND_NAME_PAUSE:Ljava/lang/String; = "/Pause"

.field private static final COMMAND_NAME_PLAY:Ljava/lang/String; = "/Play"

.field private static final COMMAND_NAME_PLAY_FROM_START:Ljava/lang/String; = "/PlayFromStart"

.field private static final COMMAND_NAME_PREVIOUS:Ljava/lang/String; = "/Previous"

.field private static final COMMAND_NAME_SET_PLAY_MODE:Ljava/lang/String; = "/SetPlayMode"

.field private static final COMMAND_NAME_SKIP_TO:Ljava/lang/String; = "/SkipTo"

.field private static final PLAY_MODE_CIRCULATION:Ljava/lang/String; = "CIRCULATION_MODE"

.field private static final PLAY_MODE_NORMAL_MODE:Ljava/lang/String; = "NORMAL_MODE"

.field private static final PLAY_MODE_RANDOM_MODE:Ljava/lang/String; = "RANDOM_MODE"

.field private static final PLAY_MODE_SHUFFLE_MODE:Ljava/lang/String; = "SHUFFLE_MODE"

.field private static final PLAY_MODE_SINGLE:Ljava/lang/String; = "SINGLE_MODE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private processPlayMode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;
    .locals 2

    .line 144
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "mode"

    const-string v1, ""

    .line 145
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 146
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;->PLAY_LOOP:Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    const-string v1, "SINGLE_MODE"

    .line 147
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;->PLAY_REPEATONE:Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    goto :goto_1

    :cond_0
    const-string v1, "CIRCULATION_MODE"

    .line 149
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "NORMAL_MODE"

    .line 150
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "RANDOM_MODE"

    .line 152
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SHUFFLE_MODE"

    .line 153
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 154
    :cond_2
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;->PLAY_SHUFFLE:Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    goto :goto_1

    .line 151
    :cond_3
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;->PLAY_LOOP:Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private processSeekTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 132
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "time"

    const-string v1, ""

    .line 133
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public processCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;
    .locals 5

    .line 65
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    return-object p4

    :cond_0
    const/4 p1, 0x1

    .line 67
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setOperation(I)V

    const/4 v0, -0x1

    .line 69
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x5

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "/Pause"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "/SkipTo"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x8

    goto :goto_1

    :sswitch_2
    const-string v1, "/Play"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "/Next"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "/Previous"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "/FastBackward"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x6

    goto :goto_1

    :sswitch_6
    const-string v1, "/SetPlayMode"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_7
    const-string v1, "/PlayFromStart"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x7

    goto :goto_1

    :sswitch_8
    const-string v1, "/FastForward"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x5

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, -0x1

    :goto_1
    const/16 v0, 0x18

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    .line 117
    :pswitch_0
    new-instance p4, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    invoke-direct {p4}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;-><init>()V

    .line 118
    invoke-direct {p0, p3}, Lcom/alibaba/ailabs/genie/musicplayer/voice/processor/VideoControlProcessor;->processSeekTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->setParameter(Ljava/lang/String;)V

    const/16 p2, 0x1a

    .line 119
    invoke-virtual {p4, p2}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->setCommand(I)Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    .line 120
    iput-boolean p1, p4, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->mIsHandled:Z

    goto/16 :goto_2

    .line 110
    :pswitch_1
    new-instance p4, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    invoke-direct {p4}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;-><init>()V

    .line 111
    invoke-virtual {p4, v0}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->setCommand(I)Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    const-string p2, "0"

    .line 112
    invoke-virtual {p4, p2}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->setParameter(Ljava/lang/String;)V

    .line 113
    iput-boolean p1, p4, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->mIsHandled:Z

    goto :goto_2

    .line 104
    :pswitch_2
    new-instance p4, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    invoke-direct {p4}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;-><init>()V

    .line 105
    invoke-direct {p0, p3}, Lcom/alibaba/ailabs/genie/musicplayer/voice/processor/VideoControlProcessor;->processSeekTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->setParameter(Ljava/lang/String;)V

    const/16 p2, 0x19

    .line 106
    invoke-virtual {p4, p2}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->setCommand(I)Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    .line 107
    iput-boolean p1, p4, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->mIsHandled:Z

    goto :goto_2

    .line 98
    :pswitch_3
    new-instance p4, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    invoke-direct {p4}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;-><init>()V

    .line 99
    invoke-virtual {p4, v0}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->setCommand(I)Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    .line 100
    invoke-direct {p0, p3}, Lcom/alibaba/ailabs/genie/musicplayer/voice/processor/VideoControlProcessor;->processSeekTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->setParameter(Ljava/lang/String;)V

    .line 101
    iput-boolean p1, p4, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->mIsHandled:Z

    goto :goto_2

    .line 91
    :pswitch_4
    new-instance p4, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    invoke-direct {p4}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;-><init>()V

    const/16 p2, 0x1b

    .line 92
    invoke-virtual {p4, p2}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->setCommand(I)Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    .line 93
    invoke-direct {p0, p3}, Lcom/alibaba/ailabs/genie/musicplayer/voice/processor/VideoControlProcessor;->processPlayMode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    move-result-object p2

    .line 94
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;->getIndex()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->setParameter(Ljava/lang/String;)V

    .line 95
    iput-boolean p1, p4, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->mIsHandled:Z

    goto :goto_2

    .line 86
    :pswitch_5
    new-instance p4, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    invoke-direct {p4}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;-><init>()V

    .line 87
    invoke-virtual {p4, v2}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->setCommand(I)Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    .line 88
    iput-boolean p1, p4, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->mIsHandled:Z

    goto :goto_2

    .line 81
    :pswitch_6
    new-instance p4, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    invoke-direct {p4}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;-><init>()V

    .line 82
    invoke-virtual {p4, p1}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->setCommand(I)Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    .line 83
    iput-boolean p1, p4, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->mIsHandled:Z

    goto :goto_2

    .line 76
    :pswitch_7
    new-instance p4, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    invoke-direct {p4}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;-><init>()V

    .line 77
    invoke-virtual {p4, v3}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->setCommand(I)Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    .line 78
    iput-boolean p1, p4, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->mIsHandled:Z

    goto :goto_2

    .line 71
    :pswitch_8
    new-instance p4, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    invoke-direct {p4}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;-><init>()V

    .line 72
    invoke-virtual {p4, v4}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->setCommand(I)Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    .line 73
    iput-boolean p1, p4, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->mIsHandled:Z

    :goto_2
    return-object p4

    :sswitch_data_0
    .sparse-switch
        -0x686388e6 -> :sswitch_8
        -0x636de5eb -> :sswitch_7
        -0x4c6dde36 -> :sswitch_6
        -0x42618dd2 -> :sswitch_5
        -0xf817fba -> :sswitch_4
        0x2bb4fc2 -> :sswitch_3
        0x2bc5003 -> :sswitch_2
        0x49fc5969 -> :sswitch_1
        0x54c8fb07 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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
