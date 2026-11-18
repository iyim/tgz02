.class public Lcom/alibaba/ailabs/genie/musicplayer/voice/processor/SystemControlProcessor;
.super Ljava/lang/Object;
.source "SystemControlProcessor.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/voice/processor/IProcessor;


# static fields
.field private static final COMMAND_NAME_CANCEL_COLLECT:Ljava/lang/String; = "/CancelCollect"

.field private static final COMMAND_NAME_COLLECT:Ljava/lang/String; = "/Collect"

.field private static final COMMAND_NAME_EXIT:Ljava/lang/String; = "/Exit"

.field private static final COMMAND_NAME_SHUT_DOWN:Ljava/lang/String; = "/ShutDown"

.field private static final COMMAND_NAME_STANDBY:Ljava/lang/String; = "/Standby"

.field private static final COMMAND_NAME_STOP:Ljava/lang/String; = "/Stop"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public processCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;
    .locals 5

    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return-object p3

    :cond_0
    const/4 p1, 0x1

    .line 39
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setOperation(I)V

    const/4 p4, -0x1

    .line 41
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "/ShutDown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "/CancelCollect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "/Standby"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "/Stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "/Exit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "/Collect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_4

    if-eq p2, p1, :cond_3

    if-eq p2, v4, :cond_2

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_2

    goto :goto_2

    .line 57
    :cond_2
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    invoke-direct {p3}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;-><init>()V

    const/16 p2, 0x12

    .line 58
    invoke-virtual {p3, p2}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->setCommand(I)Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    .line 59
    iput-boolean p1, p3, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->mIsHandled:Z

    goto :goto_2

    .line 48
    :cond_3
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    invoke-direct {p3}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;-><init>()V

    const/16 p2, 0x14

    .line 49
    invoke-virtual {p3, p2}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->setCommand(I)Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    .line 50
    iput-boolean p1, p3, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->mIsHandled:Z

    goto :goto_2

    .line 43
    :cond_4
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    invoke-direct {p3}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;-><init>()V

    const/16 p2, 0x13

    .line 44
    invoke-virtual {p3, p2}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->setCommand(I)Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    .line 45
    iput-boolean p1, p3, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->mIsHandled:Z

    :goto_2
    return-object p3

    :sswitch_data_0
    .sparse-switch
        -0x51d8ca05 -> :sswitch_5
        0x2b77ded -> :sswitch_4
        0x2bdccd1 -> :sswitch_3
        0x479077e -> :sswitch_2
        0x2ecca161 -> :sswitch_1
        0x32443fc5 -> :sswitch_0
    .end sparse-switch
.end method
