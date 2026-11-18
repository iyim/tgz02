.class public Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;
.super Ljava/lang/Object;
.source "AiCareTask.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/task/ITask;


# static fields
.field public static final GENIE_PEOPLE_DETECT_ENGINE:Ljava/lang/String; = "GeniePeopleDetectVEngine"

.field public static final GENIE_PET_DETECT_ENGINE:Ljava/lang/String; = "GeniePetDetectVEngine"


# instance fields
.field private childCareStore:Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;

.field private endHours:I

.field private endMinute:I

.field private isAiCareOpen:Z

.field private isNeedStart:Z

.field private isSafety:Z

.field private isServerConnected:Z

.field private isWonderful:Z

.field private mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

.field private mCommonCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

.field private mContext:Landroid/content/Context;

.field private startHours:I

.field private startMinute:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isNeedStart:Z

    .line 44
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isServerConnected:Z

    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isServerConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->updateSettingSync(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->updateSetting(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private checkConditions()Z
    .locals 10

    .line 254
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isAiCareOpen()Z

    move-result v0

    .line 255
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->childCareStore:Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;->isChildCareOpen()Z

    move-result v1

    const-string v2, " isChildCare="

    const-string v3, "TaskService-AiCare"

    const/4 v4, 0x0

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 257
    :cond_0
    iget-boolean v5, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isNeedStart:Z

    if-nez v5, :cond_2

    .line 258
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switch= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " needStart= "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isNeedStart:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 261
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isInTimeZone()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    .line 263
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Conditions-isInTimeZone:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isSwitchOpen:"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isNeedStart:Z

    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    if-eqz v7, :cond_5

    :cond_4
    const/4 v4, 0x1

    :cond_5
    return v4
.end method

.method private checkInitMsg()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->childCareStore:Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;->isChildCareOpen()Z

    move-result v0

    const-string v1, "TaskService-AiCare"

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->getInstance()Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->init(Landroid/content/Context;)V

    const-string v0, "init MsgProcessor"

    .line 79
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->getInstance()Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->unInit()V

    const-string v0, "unInit MsgProcessor"

    .line 82
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getAVEService()V
    .locals 4

    .line 316
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isServerConnected:Z

    const/4 v1, 0x1

    const-string v2, "TaskService-AiCare"

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->checkConditions()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "getAVEService init."

    .line 317
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->getIACallback()Lcom/alibaba/ailabs/acamera/IACameraCallback;

    move-result-object v0

    const-string v2, "genieallinone"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/avesdk/AVEClientSdk;->getAVEService(Ljava/lang/String;Lcom/alibaba/ailabs/acamera/IACameraCallback;)Lcom/alibaba/ailabs/avesdk/AVEClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    .line 319
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isServerConnected:Z

    goto :goto_1

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAVEService no need init. has init = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private getIACallback()Lcom/alibaba/ailabs/acamera/IACameraCallback;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->mCommonCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask$1;-><init>(Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->mCommonCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->mCommonCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    return-object v0
.end method

.method private isAiCareOpen()Z
    .locals 2

    const-string v0, "persist.aicare.enable"

    .line 244
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isAiCareOpen:Z

    .line 245
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isAiCareOpen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "persist.aicare.snapHuman"

    .line 248
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isWonderful:Z

    const-string v0, "persist.aicare.snapFall"

    .line 249
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isSafety:Z

    .line 250
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isWonderful:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isSafety:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isAiCareOpen:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isInTimeZone()Z
    .locals 7

    .line 192
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xa

    .line 193
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x9

    .line 194
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0xc

    :cond_0
    const/16 v2, 0xc

    .line 197
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 199
    iget v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->startHours:I

    iget v4, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->endHours:I

    const/4 v5, 0x0

    if-le v2, v4, :cond_5

    if-gt v1, v2, :cond_4

    if-ge v1, v4, :cond_1

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    .line 202
    iget v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->startMinute:I

    if-lt v0, v2, :cond_2

    return v3

    .line 204
    :cond_2
    iget v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->endHours:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->endMinute:I

    if-ge v0, v1, :cond_3

    return v3

    :cond_3
    return v5

    :cond_4
    :goto_0
    return v3

    :cond_5
    if-ge v2, v4, :cond_9

    if-ge v2, v1, :cond_6

    if-ge v1, v4, :cond_6

    return v3

    .line 212
    :cond_6
    iget v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->startHours:I

    if-ne v2, v1, :cond_7

    iget v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->startMinute:I

    if-lt v0, v2, :cond_7

    return v3

    .line 214
    :cond_7
    iget v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->endHours:I

    if-ne v2, v1, :cond_8

    iget v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->endMinute:I

    if-ge v0, v1, :cond_8

    return v3

    :cond_8
    return v5

    .line 220
    :cond_9
    iget v4, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->startMinute:I

    iget v6, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->endMinute:I

    if-le v4, v6, :cond_b

    if-ne v1, v2, :cond_a

    if-le v0, v6, :cond_a

    if-gt v0, v4, :cond_a

    return v5

    :cond_a
    return v3

    :cond_b
    if-ge v4, v6, :cond_d

    if-ne v1, v2, :cond_c

    if-lt v0, v4, :cond_c

    if-ge v0, v6, :cond_c

    return v3

    :cond_c
    return v5

    :cond_d
    return v3
.end method

.method private refresh()V
    .locals 4

    .line 271
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isNeedStart:Z

    const-string v1, "TaskService-AiCare"

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isServerConnected:Z

    if-nez v0, :cond_0

    const-string v0, "needStart=false and isServerConnected=false"

    .line 272
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->checkConditions()Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isServerConnected:Z

    if-nez v2, :cond_1

    const-string v0, "needStart=true and condition=false"

    .line 278
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 282
    :cond_1
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isServerConnected:Z

    if-nez v2, :cond_2

    .line 283
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->getAVEService()V

    .line 286
    :cond_2
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isServerConnected:Z

    if-nez v2, :cond_3

    const-string v0, "ServerConnect=false"

    .line 287
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v2, 0x4

    if-eqz v0, :cond_6

    .line 292
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->getConnectState()Z

    move-result v0

    if-nez v0, :cond_4

    .line 293
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/avesdk/AVEClient;->start(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 294
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/utils/UTTools;->SwitchUt(Z)V

    .line 296
    :cond_4
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isAiCareOpen:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isSafety:Z

    if-eqz v0, :cond_5

    .line 297
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/agui/mmi/MmiManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->startCapability(I)Z

    goto :goto_0

    .line 299
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/agui/mmi/MmiManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->stopCapability(I)Z

    :goto_0
    const-string v0, "refresh start"

    .line 301
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 303
    :cond_6
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->getConnectState()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 304
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/avesdk/AVEClient;->stop(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 305
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/utils/UTTools;->SwitchUt(Z)V

    .line 307
    :cond_7
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/agui/mmi/MmiManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->stopCapability(I)Z

    .line 308
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->childCareStore:Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;->isChildCareOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 309
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->getInstance()Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->clearMsg()V

    :cond_8
    const-string v0, "refresh stop"

    .line 311
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private updateSetting(Z)V
    .locals 7

    const-string v0, "TaskService-AiCare"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSetting force="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "persist.aicare.enable"

    .line 161
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isAiCareOpen:Z

    const-string p1, "persist.aicare.snapHuman"

    .line 162
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isWonderful:Z

    const-string p1, "persist.aicare.snapFall"

    .line 163
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isSafety:Z

    const/16 p1, 0x9

    const-string v2, "persist.aicare.startHours"

    .line 165
    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->startHours:I

    const-string p1, "persist.aicare.startMinutes"

    .line 166
    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->startMinute:I

    const/16 p1, 0x15

    const-string v2, "persist.aicare.endHours"

    .line 167
    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->endHours:I

    const-string p1, "persist.aicare.endMinutes"

    .line 168
    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->endMinute:I

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSetting-isAiCareOpen:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isAiCareOpen:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nisWonderful:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isWonderful:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nisSafety:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isSafety:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nstartHours:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->startHours:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nstartMinute:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->startMinute:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nendHours:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->endHours:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nendMinute:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->endMinute:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nisChildCareOpen:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->childCareStore:Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;

    .line 176
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;->isChildCareOpen()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nisMainThread;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/utils/LogTag;->isMainThread()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->getAVEService()V

    .line 181
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isServerConnected:Z

    if-eqz p1, :cond_7

    .line 182
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isAiCareOpen:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isSafety:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isWonderful:Z

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->childCareStore:Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;->isChildCareOpen()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 183
    :goto_0
    iget-boolean v3, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isAiCareOpen:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isWonderful:Z

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    .line 185
    :cond_4
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v3, "enable"

    const-string v4, "disable"

    if-eqz p1, :cond_5

    move-object v5, v3

    goto :goto_1

    :cond_5
    move-object v5, v4

    :goto_1
    const-string v6, "GeniePeopleDetectVEngine"

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 186
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move-object v3, v4

    :goto_2
    const-string v4, "GeniePetDetectVEngine"

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ioctl snapPet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " enablePeople="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private updateSettingSync(Z)V
    .locals 1

    .line 143
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/utils/LogTag;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask$2;-><init>(Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;Z)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->updateSetting(Z)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 2

    .line 65
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->childCareStore:Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;

    .line 67
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/task/utils/ToolsUtils;->isScreenOff(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isNeedStart:Z

    .line 68
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->getInstance()Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    move-result-object p1

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isNeedStart:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->setScreenState(I)V

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate isNeedStart="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isNeedStart:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TaskService-AiCare"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->checkInitMsg()V

    .line 71
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/net/MtopApi;->syncSetting()V

    .line 72
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->updateSettingSync(Z)V

    .line 73
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->refresh()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-eqz v0, :cond_0

    .line 328
    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/AVEClientSdk;->releaseAVEService(Lcom/alibaba/ailabs/avesdk/AVEClient;)V

    const/4 v0, 0x0

    .line 329
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isServerConnected:Z

    :cond_0
    return-void
.end method

.method public onReceiver(Landroid/content/Intent;)V
    .locals 7

    .line 95
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiver ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskService-AiCare"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "aicare.enable.change"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "com.alibaba.ailabs.game.center.DESKTOP_START"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "com.alibaba.ailabs.game.center.DESKTOP_STOP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "is_screen_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return-void

    .line 126
    :pswitch_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->getInstance()Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->isScreenOffMsgShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->getInstance()Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->setScreenState(I)V

    const-string p1, "ScreenOffMsgShowing go on working"

    .line 128
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 131
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->getInstance()Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->clearStack()V

    .line 132
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->getInstance()Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->setScreenState(I)V

    .line 133
    iput-boolean v5, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isNeedStart:Z

    .line 134
    invoke-static {v5, p1}, Lcom/alibaba/ailabs/genie/task/utils/UTTools;->monitorUt(ZLjava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->refresh()V

    goto :goto_2

    .line 118
    :pswitch_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->getInstance()Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->clearStack()V

    .line 119
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->getInstance()Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->setScreenState(I)V

    .line 120
    iput-boolean v5, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isNeedStart:Z

    .line 121
    invoke-static {v5, p1}, Lcom/alibaba/ailabs/genie/task/utils/UTTools;->monitorUt(ZLjava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->refresh()V

    goto :goto_2

    .line 111
    :pswitch_2
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->getInstance()Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->setScreenState(I)V

    .line 112
    iput-boolean v6, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isNeedStart:Z

    .line 113
    invoke-static {v6, p1}, Lcom/alibaba/ailabs/genie/task/utils/UTTools;->monitorUt(ZLjava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->refresh()V

    goto :goto_2

    .line 105
    :pswitch_3
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->getInstance()Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->setScreenState(I)V

    .line 106
    iput-boolean v6, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->isNeedStart:Z

    .line 107
    invoke-static {v6, p1}, Lcom/alibaba/ailabs/genie/task/utils/UTTools;->monitorUt(ZLjava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->refresh()V

    goto :goto_2

    .line 99
    :pswitch_4
    invoke-direct {p0, v6}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->updateSettingSync(Z)V

    .line 100
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->checkInitMsg()V

    .line 101
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->refresh()V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_7
        -0x56ac2893 -> :sswitch_6
        -0x46b11a43 -> :sswitch_5
        0xe98bfe6 -> :sswitch_4
        0xf5d1132 -> :sswitch_3
        0x19b2faa3 -> :sswitch_2
        0x1cac25c1 -> :sswitch_1
        0x4012c086 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public runTick()V
    .locals 2

    const-string v0, "TaskService-AiCare"

    const-string v1, "run"

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->refresh()V

    .line 90
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/net/MtopApi;->checkNeedSyncSetting()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
