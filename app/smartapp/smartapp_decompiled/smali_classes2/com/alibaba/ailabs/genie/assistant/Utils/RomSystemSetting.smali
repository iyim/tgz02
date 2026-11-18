.class public Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;
.super Ljava/lang/Object;
.source "RomSystemSetting.java"


# static fields
.field private static final AILABS_MAX_VOLUME:I = 0x64

.field private static final Send_Key_Delay:I = 0x1f4

.field private static final Send_Key_Power_Delay:I = 0xbb8

.field public static final TAG:Ljava/lang/String; = "RomSystemSetting"

.field private static final UNDERLINE:Ljava/lang/String; = "_"

.field private static final VALUE_SYSTEM_PREFIX_S1:Ljava/lang/String; = "AILABS_S1_"

.field private static final VALUE_SYSTEM_PREFIX_S1L:Ljava/lang/String; = "AILABS_S1L_"

.field private static final VALUE_SYSTEM_PREFIX_S3:Ljava/lang/String; = "AILABS_S3_"

.field private static final VALUE_SYSTEM_PREFIX_S4A02:Ljava/lang/String; = "AILABS_S4A02_"

.field private static final VALUE_SYSTEM_PREFIX_S5:Ljava/lang/String; = "AILABS_S5_"

.field private static final VALUE_SYSTEM_PREFIX_S7:Ljava/lang/String; = "AILABS_S7_"

.field private static final VALUE_SYSTEM_S1:Ljava/lang/String; = "AILABS_S1"

.field private static final VALUE_SYSTEM_S1L:Ljava/lang/String; = "AILABS_S1L"

.field private static final VALUE_SYSTEM_S3:Ljava/lang/String; = "AILABS_S3"

.field private static final VALUE_SYSTEM_S4A02:Ljava/lang/String; = "AILABS_S4A02"

.field private static final VALUE_SYSTEM_S5:Ljava/lang/String; = "AILABS_S5"

.field private static final VALUE_SYSTEM_S7:Ljava/lang/String; = "AILABS_S7"

.field private static final VOLUME_GAP:I = 0x5

.field private static changeLevel:I = -0x1

.field private static isChecked:Z = false

.field private static isMute:Z = false

.field private static masterStream:Z = false

.field private static muteEnable:Z = true

.field private static s_recoverLevel:I = -0x1

.field private static s_streamLock:Ljava/lang/Object; = null

.field private static s_streamSoloedCount:I = 0x0

.field private static showUI:Z = true

.field private static simKey:Z = false

.field public static streamType:I = 0x4

.field private static volumeLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 283
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->s_streamLock:Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static checkStreamVolumn(Landroid/content/Context;)V
    .locals 3

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkStreamVolumn: s_streamSoloed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->s_streamSoloedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " streamType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->streamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RomSystemSetting"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->s_streamLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_0
    sget v1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->s_streamSoloedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    :try_start_1
    const-string v1, "audio"

    .line 292
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 293
    sget v1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->streamType:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 294
    sget p0, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->s_streamSoloedCount:I

    add-int/2addr p0, v2

    sput p0, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->s_streamSoloedCount:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 296
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 300
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static cleanAllPlayer(Landroid/content/Context;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 627
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;I)V

    .line 629
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 631
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->pause()V

    .line 634
    :cond_1
    invoke-static {p0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/task/TaskSvr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->cleanAllPlayer()V

    .line 636
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->agmcStopAll()V

    return-void
.end method

.method public static cleanMuteStatus(Landroid/content/Context;)V
    .locals 1

    const-string v0, "audio"

    .line 394
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x3

    .line 395
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    .line 397
    sput p0, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->volumeLevel:I

    .line 398
    sput-boolean p0, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->isMute:Z

    :cond_0
    return-void
.end method

.method public static decreaseSrtreamVolumn(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decreaseSrtreamVolumn. decreaseVolume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RomSystemSetting"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-boolean v0, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->simKey:Z

    if-eqz v0, :cond_0

    const/16 p1, 0x19

    .line 222
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 228
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 229
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 232
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v2, "audio"

    .line 235
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 236
    sget-boolean v2, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->masterStream:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    .line 239
    :try_start_1
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getMasterAudioMaxVolume(Landroid/media/AudioManager;)I

    move-result v2

    .line 240
    sget v4, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->changeLevel:I

    if-lez v4, :cond_2

    sget v4, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->changeLevel:I

    goto :goto_1

    :cond_2
    div-int/lit8 v4, v2, 0x5

    :goto_1
    if-lez p1, :cond_3

    mul-int p1, p1, v2

    .line 242
    div-int/lit8 v4, p1, 0x64

    .line 245
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decreaseSrtreamVolumn master levelIncrease:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v4, :cond_b

    .line 248
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getMasterAudioVolume(Landroid/media/AudioManager;)I

    move-result p1

    sub-int/2addr p1, v4

    if-gez p1, :cond_4

    const/4 p1, 0x0

    .line 250
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decreaseSrtreamVolumn, setStreamVolume master newLevel:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-boolean v2, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->showUI:Z

    if-eqz v2, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->setMasterAudioVolume(Landroid/media/AudioManager;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception p0

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "decreaseSrtreamVolumn failed error:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 258
    :cond_6
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decreaseSrtreamVolumn maxLevel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget v4, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->changeLevel:I

    if-lez v4, :cond_7

    goto :goto_2

    :cond_7
    div-int/lit8 v4, v2, 0x5

    :goto_2
    if-lez p1, :cond_8

    mul-int p1, p1, v2

    .line 262
    div-int/lit8 v4, p1, 0x64

    .line 265
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decreaseSrtreamVolumn levelDecrease:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v4, :cond_a

    .line 267
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    sub-int v2, p1, v4

    if-gez v2, :cond_9

    const/4 v2, 0x0

    .line 270
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decreaseSrtreamVolumn, oldLevel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ;newLevel:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0, v0, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_3

    :cond_a
    const-string p1, "adjustStreamVolume..."

    .line 273
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 274
    invoke-virtual {p0, v0, p1, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_b
    :goto_3
    return-void
.end method

.method public static downStreamVolumn(Landroid/content/Context;)V
    .locals 3

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downStreamVolumn: s_streamSoloed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->s_streamSoloedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " streamType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->streamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RomSystemSetting"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->s_streamLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "audio"

    .line 308
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 309
    sget v1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->streamType:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 310
    sget p0, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->s_streamSoloedCount:I

    add-int/2addr p0, v2

    sput p0, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->s_streamSoloedCount:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 312
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 314
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getBizGroup()Ljava/lang/String;
    .locals 3

    .line 740
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBizGroup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RomSystemSetting"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0
.end method

.method public static getBizType()Ljava/lang/String;
    .locals 3

    .line 731
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBizType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RomSystemSetting"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0
.end method

.method public static getMasterAudioMaxVolume(Landroid/media/AudioManager;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 356
    const-class v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    move-object v2, v1

    nop

    nop

    const-string v3, "getMasterMaxVolume"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 357
    nop

    nop

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 358
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getMasterAudioVolume(Landroid/media/AudioManager;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 349
    const-class v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    move-object v2, v1

    nop

    nop

    const-string v3, "getMasterVolume"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 350
    nop

    nop

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 351
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getProductModel()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.product.model"

    const-string v1, "unKnown"

    .line 781
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "model= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RomSystemSetting"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getScreenBrightness(Landroid/content/Context;)I
    .locals 1

    .line 540
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 542
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 565
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    .line 566
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 567
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    const-string p0, ""

    aput-object p0, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 570
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static increaseStreamVolumn(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "increaseStreamVolumn. increaseVolume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RomSystemSetting"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-boolean v0, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->simKey:Z

    if-eqz v0, :cond_0

    const/16 p1, 0x18

    .line 159
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 165
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v2, "audio"

    .line 172
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 173
    sget-boolean v2, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->masterStream:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    .line 176
    :try_start_1
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getMasterAudioMaxVolume(Landroid/media/AudioManager;)I

    move-result v2

    .line 177
    sget v4, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->changeLevel:I

    if-lez v4, :cond_2

    sget v4, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->changeLevel:I

    goto :goto_1

    :cond_2
    div-int/lit8 v4, v2, 0x5

    :goto_1
    if-lez p1, :cond_3

    mul-int p1, p1, v2

    .line 179
    div-int/lit8 v4, p1, 0x64

    .line 182
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "increaseStreamVolumn master levelIncrease:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v4, :cond_b

    .line 185
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getMasterAudioVolume(Landroid/media/AudioManager;)I

    move-result p1

    add-int/2addr p1, v4

    if-le p1, v2, :cond_4

    move p1, v2

    .line 187
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "increaseStreamVolumn, setStreamVolume master newLevel:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-boolean v2, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->showUI:Z

    if-eqz v2, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->setMasterAudioVolume(Landroid/media/AudioManager;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception p0

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "increaseStreamVolumn failed error:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 195
    :cond_6
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "increaseStreamVolumn maxLevel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget v4, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->changeLevel:I

    if-lez v4, :cond_7

    goto :goto_2

    :cond_7
    div-int/lit8 v4, v2, 0x5

    :goto_2
    if-lez p1, :cond_8

    mul-int p1, p1, v2

    .line 199
    div-int/lit8 v4, p1, 0x64

    .line 202
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "increaseStreamVolumn levelIncrease:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v4, :cond_a

    const/4 p1, 0x3

    .line 204
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    add-int v3, p1, v4

    if-le v3, v2, :cond_9

    goto :goto_3

    :cond_9
    move v2, v3

    .line 207
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "increaseStreamVolumn, oldLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ;newLevel:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-boolean p1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->showUI:Z

    invoke-virtual {p0, v0, v2, p1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_4

    :cond_a
    const-string p1, "adjustStreamVolume..."

    .line 211
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-boolean p1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->showUI:Z

    invoke-virtual {p0, v0, v3, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_b
    :goto_4
    return-void
.end method

.method public static isCM()Z
    .locals 2

    .line 793
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getProductModel()Ljava/lang/String;

    move-result-object v0

    .line 794
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "_CM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCU()Z
    .locals 2

    .line 798
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getProductModel()Ljava/lang/String;

    move-result-object v0

    .line 799
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "_CU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isChinaUnicom()Z
    .locals 4

    const/4 v0, 0x0

    .line 651
    :try_start_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const-string v2, "CU"

    .line 652
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChinaUnicom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RomSystemSetting"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isCmccDevice()Z
    .locals 4

    const/4 v0, 0x0

    .line 641
    :try_start_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const-string v2, "CM"

    .line 642
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCmccDevice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RomSystemSetting"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isDeviceS1()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AILABS_S1"

    .line 671
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "AILABS_S1_"

    .line 672
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeviceS1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RomSystemSetting"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isDeviceS1L()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AILABS_S1L"

    .line 681
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "AILABS_S1L_"

    .line 682
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeviceS1L:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RomSystemSetting"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isDeviceS3()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AILABS_S3"

    .line 691
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "AILABS_S3_"

    .line 692
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeviceS3:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RomSystemSetting"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isDeviceS4A02()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AILABS_S4A02"

    .line 721
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "AILABS_S4A02_"

    .line 722
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    .line 724
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeviceS4:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RomSystemSetting"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isDeviceS5()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AILABS_S5"

    .line 711
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "AILABS_S5_"

    .line 712
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    .line 714
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeviceS5:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RomSystemSetting"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isDeviceS7()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AILABS_S7"

    .line 701
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "AILABS_S7_"

    .line 702
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeviceS7:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RomSystemSetting"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isEnableMute(Landroid/content/Context;)Z
    .locals 0

    .line 61
    sget-boolean p0, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->muteEnable:Z

    return p0
.end method

.method public static isFourInch()Z
    .locals 2

    .line 808
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getProductModel()Ljava/lang/String;

    move-result-object v0

    .line 809
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "_S4A02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMonkey()Z
    .locals 4

    const/4 v0, 0x0

    .line 456
    :try_start_0
    const-class v1, Landroid/app/ActivityManager;

    const-string v2, "isUserAMonkey"

    .line 457
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    .line 458
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 460
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static isNT()Z
    .locals 2

    .line 803
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getProductModel()Ljava/lang/String;

    move-result-object v0

    .line 804
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "_NT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNjTelecom()Z
    .locals 4

    const/4 v0, 0x0

    .line 661
    :try_start_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const-string v2, "NT"

    .line 662
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "nt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNjTelecom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RomSystemSetting"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isPreEnv()Z
    .locals 2

    .line 771
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->readSystemEnv()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isRSSystem()Z
    .locals 3

    .line 748
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 749
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-"

    .line 750
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 751
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    aget-object v0, v0, v2

    const-string v1, "RS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSetUpComplete(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    .line 550
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "device_provisioned"

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "RomSystemSetting"

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value  =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 p0, 0x1

    .line 553
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-ne p0, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method private static readSystemEnv()I
    .locals 4

    const-string v0, "RomSystemSetting"

    :try_start_0
    const-string v1, "persist.sys.genie.env"

    .line 761
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 762
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persist.sys.genie.env = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 765
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static rebootDevice(Landroid/content/Context;)V
    .locals 1

    const-string v0, "power"

    .line 577
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string v0, ""

    .line 578
    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method

.method public static recoverStreamVolumn(Landroid/content/Context;)V
    .locals 3

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recoverStreamVolumn: s_streamSoloed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->s_streamSoloedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " streamType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->streamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RomSystemSetting"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->s_streamLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "audio"

    .line 322
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 323
    :goto_0
    sget v1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->s_streamSoloedCount:I

    if-lez v1, :cond_0

    .line 324
    sget v1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->streamType:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 325
    sget v1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->s_streamSoloedCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->s_streamSoloedCount:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 328
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 330
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static saveScreenBrightness(ILandroid/content/Context;)V
    .locals 2

    .line 530
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance p0, Ljava/math/BigDecimal;

    const/16 v1, 0xff

    invoke-direct {p0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    new-instance v0, Ljava/math/BigDecimal;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    .line 531
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "screen_brightness"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 533
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static sendVirtualKey(Landroid/content/Context;I)V
    .locals 2

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendVirtualKey, keyCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RomSystemSetting"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    .line 468
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->isMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 473
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->isHomePage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 478
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 479
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting$1;

    invoke-direct {v0, p0, p1, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting$1;-><init>(Landroid/content/Context;II)V

    .line 500
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting$1;->start()V

    return-void
.end method

.method public static sendVirtualKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "play"

    .line 406
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "shutdown"

    const/16 v2, 0x55

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "pause"

    .line 408
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v0, "fastf"

    .line 410
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0x5a

    goto/16 :goto_1

    :cond_2
    const-string v0, "fastb"

    .line 412
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v2, 0x59

    goto/16 :goto_1

    :cond_3
    const-string v0, "return"

    .line 414
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x4

    goto/16 :goto_1

    :cond_4
    const-string v0, "prev"

    .line 416
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v2, 0x58

    goto :goto_1

    :cond_5
    const-string v0, "next"

    .line 418
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x57

    goto :goto_1

    :cond_6
    const-string v0, "screen_off"

    .line 420
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "sys.power.standby"

    const/16 v4, 0x1a

    if-eqz v0, :cond_7

    .line 421
    invoke-static {p0, v4}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;I)V

    const-string v0, "0"

    .line 422
    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 423
    :cond_7
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "power"

    .line 424
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 425
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 426
    invoke-static {p0, v4}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;I)V

    :cond_8
    const/4 v0, 0x1

    .line 428
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->cleanAllPlayer(Landroid/content/Context;Z)V

    const-string v0, "1"

    .line 429
    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    const/4 v2, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v5, v4}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->systemToNotify(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_9
    const-string v0, "cancelsleep"

    .line 435
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 436
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v0, v2, :cond_b

    const/16 v2, 0xe0

    goto :goto_1

    :cond_a
    const-string v0, "home"

    .line 439
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v2, 0x3

    goto :goto_1

    :cond_b
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-ne v2, v3, :cond_c

    return-void

    .line 444
    :cond_c
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 445
    invoke-static {p0, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;I)V

    :cond_d
    return-void
.end method

.method public static sendVirtualKeyNow(I)V
    .locals 2

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendVirtualKey, keyCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RomSystemSetting"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting$2;-><init>(I)V

    .line 516
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting$2;->start()V

    return-void
.end method

.method public static setMasterAudioMute(Landroid/media/AudioManager;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 343
    const-class v0, Landroid/media/AudioManager;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setMasterMute"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 344
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setMasterAudioVolume(Landroid/media/AudioManager;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 363
    const-class v0, Landroid/media/AudioManager;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "setMasterVolume"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 364
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setMode(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 9

    :try_start_0
    const-string v0, "DND_MODE"

    .line 585
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const-string v2, "off"

    const-string v3, "on"

    const-string v4, "operateType"

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 586
    :try_start_1
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 588
    invoke-static {p0, v5}, Lcom/alibaba/ailabs/genie/assistant/Utils/DoNotDisturbModeAPI;->enableDoNotDisturbMode(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 589
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    invoke-static {p0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/DoNotDisturbModeAPI;->enableDoNotDisturbMode(Landroid/content/Context;Z)V

    :cond_1
    :goto_0
    const-string v0, "CHILD_MODE"

    .line 593
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "requirePassword"

    if-eqz v0, :cond_3

    .line 594
    :try_start_2
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 595
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v7, :cond_2

    .line 596
    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 597
    invoke-static {p0, v5, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/ChildModeApi;->enableChildMode(Landroid/content/Context;ZZ)V

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    .line 598
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 599
    invoke-static {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/ChildModeApi;->enableChildMode(Landroid/content/Context;ZZ)V

    :cond_3
    :goto_1
    const-string v0, "EYE_MODE"

    .line 602
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 603
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 604
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 605
    invoke-static {p0, v5}, Lcom/alibaba/ailabs/genie/assistant/Utils/ChildModeApi;->enableEyeYieldMode(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    .line 606
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 607
    invoke-static {p0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/ChildModeApi;->enableEyeYieldMode(Landroid/content/Context;Z)V

    :cond_5
    :goto_2
    const-string v0, "LISTEN_MODE"

    .line 611
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 612
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    invoke-virtual {p1, v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz v0, :cond_6

    .line 614
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 615
    invoke-static {p0, v5, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/ChildModeApi;->enableListenMode(Landroid/content/Context;ZZ)V

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    .line 616
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 617
    invoke-static {p0, v1, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/ChildModeApi;->enableListenMode(Landroid/content/Context;ZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 621
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_3
    return-void
.end method

.method public static setMute(Landroid/content/Context;ZZ)V
    .locals 5

    const-string v0, "audio"

    .line 369
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMute mute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " simKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->simKey:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " muteEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->muteEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " masterStream:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->masterStream:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RomSystemSetting"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 371
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 373
    sput v2, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->volumeLevel:I

    .line 374
    invoke-virtual {p0, v0, v3, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 p0, 0x1

    .line 375
    sput-boolean p0, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->isMute:Z

    .line 376
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setMute true volumeLevel:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->volumeLevel:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMute false volumeLevel:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->volumeLevel:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    sget-boolean p1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->isMute:Z

    if-nez p1, :cond_1

    return-void

    .line 382
    :cond_1
    sput-boolean v3, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->isMute:Z

    .line 383
    sget p1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->volumeLevel:I

    if-nez p1, :cond_2

    .line 384
    invoke-virtual {p0, v0, v2, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void

    .line 388
    :cond_2
    invoke-virtual {p0, v0, p1, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_0
    return-void
.end method

.method public static setStreamVolumn(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStreamVolumn. volumeValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RomSystemSetting"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    sget-boolean v0, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->simKey:Z

    if-eqz v0, :cond_1

    const/16 p1, 0x18

    .line 112
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 118
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 p1, 0x0

    .line 125
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStreamVolumn. volumeValueInt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "audio"

    .line 126
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 127
    sget-boolean v2, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->masterStream:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    if-lez p1, :cond_8

    .line 130
    :try_start_1
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getMasterAudioMaxVolume(Landroid/media/AudioManager;)I

    move-result v2

    mul-int p1, p1, v2

    .line 131
    div-int/lit8 p1, p1, 0x64

    if-le p1, v2, :cond_3

    move p1, v2

    .line 133
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStreamVolumn, setStreamVolume master newLevel:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-boolean v2, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->showUI:Z

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->setMasterAudioVolume(Landroid/media/AudioManager;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setStreamVolumn failed error:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x3

    .line 140
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    if-ltz p1, :cond_7

    mul-int p1, p1, v2

    .line 142
    div-int/lit8 p1, p1, 0x64

    if-le p1, v2, :cond_6

    move p1, v2

    .line 144
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStreamVolumn, setStreamVolume newLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-boolean v1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->showUI:Z

    invoke-virtual {p0, v0, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    :cond_7
    const-string p1, "setStreamVolumn adjustStreamVolume..."

    .line 148
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-boolean p1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->showUI:Z

    invoke-virtual {p0, v0, v3, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_8
    :goto_1
    return-void
.end method

.method public static setStreamVolumn(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .line 99
    sget-boolean v0, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->showUI:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 100
    :goto_0
    sput-boolean p2, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->showUI:Z

    .line 101
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->setStreamVolumn(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    sput-boolean v0, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->showUI:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setStreamVolumn(Landroid/content/Context;Z)V
    .locals 4

    const-string v0, "audio"

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const-string v0, "RomSystemSetting"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 70
    sget-boolean p1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->masterStream:Z

    if-eqz p1, :cond_1

    .line 73
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getMasterAudioMaxVolume(Landroid/media/AudioManager;)I

    move-result p1

    .line 75
    sget-boolean v3, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->showUI:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, p1, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->setMasterAudioVolume(Landroid/media/AudioManager;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStreamVolumn failed error:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 80
    :cond_1
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    .line 81
    sget-boolean v0, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->showUI:Z

    invoke-virtual {p0, v2, p1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_2

    .line 85
    :cond_2
    sget-boolean p1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->masterStream:Z

    if-eqz p1, :cond_4

    .line 88
    :try_start_1
    sget-boolean p1, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->showUI:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {p0, v2, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->setMasterAudioVolume(Landroid/media/AudioManager;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMasterAudioVolume failed error:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 93
    :cond_4
    invoke-virtual {p0, v2, v2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_2
    return-void
.end method

.method public static setWiFiState(ZLandroid/content/Context;)V
    .locals 1

    const-string v0, "wifi"

    .line 520
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 521
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-ne v0, p0, :cond_0

    const-string p0, "RomSystemSetting"

    const-string p1, "not update wifi status"

    .line 522
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 524
    :cond_0
    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :goto_0
    return-void
.end method
