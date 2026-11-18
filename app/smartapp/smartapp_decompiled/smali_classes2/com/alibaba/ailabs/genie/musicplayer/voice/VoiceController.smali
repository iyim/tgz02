.class public final Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;
.super Ljava/lang/Object;
.source "VoiceController.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController$Holder;
    }
.end annotation


# static fields
.field public static final COMMAND_DOMAIN_CONTROL_SYSTEM:Ljava/lang/String; = "AliGenie.System.Control"

.field public static final COMMAND_DOMAIN_CONTROL_VIDEO:Ljava/lang/String; = "AliGenie.Video.Control"

.field private static final HANDLER:Landroid/os/Handler;

.field private static final TAG:Ljava/lang/String; = "VoiceController"

.field private static final VOICE_SKILL_SECRET_KEY:Ljava/lang/String; = "f042efea-bd15-4eb3-bde8-c563d4256855"


# instance fields
.field private mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

.field private mLastRegisterTimeStamp:J

.field private mProcessorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/musicplayer/voice/processor/IProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->HANDLER:Landroid/os/Handler;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 133
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->mLastRegisterTimeStamp:J

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->mProcessorMap:Ljava/util/HashMap;

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->mProcessorMap:Ljava/util/HashMap;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/voice/processor/VideoControlProcessor;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/musicplayer/voice/processor/VideoControlProcessor;-><init>()V

    const-string v2, "AliGenie.Video.Control"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->mProcessorMap:Ljava/util/HashMap;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/voice/processor/SystemControlProcessor;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/musicplayer/voice/processor/SystemControlProcessor;-><init>()V

    const-string v2, "AliGenie.System.Control"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController$1;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;
    .locals 1

    .line 55
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController$Holder;->access$100()Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;

    move-result-object v0

    return-object v0
.end method

.method private handleCommand(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCommand() called with: playerASRCommand = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->getParameter()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->getCommand()I

    move-result p2

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    return v0

    .line 230
    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->sendPlayerBroadcast(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method static synthetic lambda$onNLUResult$72(Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;)V
    .locals 3

    .line 107
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->handleCommand(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;)Z

    move-result p0

    .line 108
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNLUResult handleResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 111
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNLUResult throwable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private processAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "f042efea-bd15-4eb3-bde8-c563d4256855"

    .line 215
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSecretKey(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 216
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setCanExitSkill(Z)V

    return-object p1
.end method

.method private processCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;
    .locals 3

    .line 183
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCommand() called with: commandDomain = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], command = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], commandParams = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], nlpResult = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->mProcessorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 192
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v2, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/voice/processor/IProcessor;

    if-nez v2, :cond_2

    goto :goto_0

    .line 201
    :cond_2
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/musicplayer/voice/processor/IProcessor;->processCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_3
    return-object v1
.end method

.method private sendPlayerBroadcast(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 238
    :cond_0
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.alibaba.ailabs.genie.musicplayer.cmd"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    const/4 p2, 0x7

    goto :goto_1

    :cond_1
    const/16 v1, 0x18

    if-eq p2, v1, :cond_3

    const/16 v1, 0x19

    if-eq p2, v1, :cond_3

    const/16 v1, 0x1a

    if-ne p2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x1b

    if-ne p2, v1, :cond_4

    const-string v1, "playModel"

    .line 248
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_3
    :goto_0
    :try_start_1
    const-string v1, "seekValue"

    .line 243
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    .line 245
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    const-string p3, "Control"

    .line 250
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "from_voice"

    const/4 p3, 0x1

    .line 251
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return p3

    :catch_1
    :cond_5
    :goto_2
    return v0
.end method


# virtual methods
.method public asrToClient(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 1

    .line 120
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->processAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getSceneInfo(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public init()V
    .locals 3

    .line 69
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setBackgroundService(Z)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setOnASRCommandListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;->DEFAULT_LISTENER:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setASRListenerType(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setASRResultMode(I)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->init(Landroid/content/Context;Z)V

    .line 75
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->TAG:Ljava/lang/String;

    const-string v1, "init-end"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onASRResult(Ljava/lang/String;Z)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onASRServiceStatusUpdated(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRServiceStatus;)V
    .locals 4

    .line 89
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRServiceStatus;->ASR_SERVICE_STATUS_CONNECTED:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRServiceStatus;

    const-string v1, "\uff09"

    if-ne p1, v0, :cond_0

    .line 90
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bed\u97f3\u670d\u52a1\u6ce8\u518c\u6210\u529f...\uff08"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_0
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bed\u97f3\u670d\u52a1\u6ce8\u518c\u5931\u8d25...\uff08"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onASRStatusUpdated(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;Landroid/os/Bundle;)V
    .locals 3

    .line 84
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onASRStatusUpdated() called with: asrStatus = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], bundle = ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 1

    .line 103
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;

    move-result-object v0

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->processCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    iget-boolean p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->mIsHandled:Z

    if-eqz p2, :cond_0

    .line 105
    sget-object p2, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->HANDLER:Landroid/os/Handler;

    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/voice/-$$Lambda$VoiceController$IIMGxd6UcJgPlUm0ncGd6ewlPic;

    invoke-direct {p3, p1}, Lcom/alibaba/ailabs/genie/musicplayer/voice/-$$Lambda$VoiceController$IIMGxd6UcJgPlUm0ncGd6ewlPic;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-object p1
.end method

.method public registerTts(Landroid/content/Context;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->mLastRegisterTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->mLastRegisterTimeStamp:J

    .line 146
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerTts() called with: context = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], sessionId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;Landroid/content/Context;I)V

    invoke-static {p1, p2, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->registerTtsCallback(Landroid/content/Context;ILcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)V

    return-void

    .line 142
    :cond_1
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->TAG:Ljava/lang/String;

    const-string p2, "registerTts() called too fast"

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setPackageName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-void
.end method

.method public unRegisterTts(Landroid/content/Context;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 178
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->unregisterTtsCallback(Landroid/content/Context;I)V

    .line 179
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ungisterTts() called with: context = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], sessionId = ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
