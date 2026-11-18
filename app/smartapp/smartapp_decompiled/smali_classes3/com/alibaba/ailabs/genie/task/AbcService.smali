.class public Lcom/alibaba/ailabs/genie/task/AbcService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "AbcService.java"


# static fields
.field private static final MSG_CHECK:I = 0x3e8

.field private static final MSG_SHOW:I = 0x3e9

.field private static final SEEK_BAR:Ljava/lang/String; = "android.widget.SeekBar"

.field private static final TAG:Ljava/lang/String; = "TaskService-AppAbcService"

.field private static final YOU_KU_TEXT:Ljava/lang/String; = "\u70b9\u51fb\u5c55\u5f00\u66f4\u591a"


# instance fields
.field handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private hasFindBar:Z

.field private hasFindBarCount:I

.field volatile isCheckingBar:Z

.field private isPlayer:Z

.field private lastClass:Ljava/lang/String;

.field private lastPkg:Ljava/lang/String;

.field private mAccServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field private manager:Landroid/app/ActivityManager;

.field start:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->hasFindBarCount:I

    .line 52
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->isCheckingBar:Z

    .line 78
    new-instance v0, Lcom/alibaba/ailabs/genie/task/AbcService$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/task/AbcService$2;-><init>(Lcom/alibaba/ailabs/genie/task/AbcService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/task/AbcService;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->hasFindBar:Z

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/task/AbcService;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->hasFindBar:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/task/AbcService;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/task/AbcService;->checkHasSeekBar(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/task/AbcService;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->hasFindBarCount:I

    return p0
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/genie/task/AbcService;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->hasFindBarCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/task/AbcService;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->isPlayer:Z

    return p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/task/AbcService;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/AbcService;->checkSeekBar()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private checkHasSeekBar(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    .line 191
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->hasFindBar:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 194
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "\u70b9\u51fb\u5c55\u5f00\u66f4\u591a"

    const-string v3, "android.widget.SeekBar"

    const/4 v4, 0x1

    if-nez v1, :cond_4

    if-eqz p1, :cond_3

    .line 196
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 197
    :cond_2
    iput-boolean v4, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->hasFindBar:Z

    :cond_3
    return-void

    :cond_4
    :goto_1
    if-ge v0, v1, :cond_7

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 204
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 205
    :cond_5
    iput-boolean v4, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->hasFindBar:Z

    return-void

    .line 208
    :cond_6
    invoke-direct {p0, v5}, Lcom/alibaba/ailabs/genie/task/AbcService;->checkHasSeekBar(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method private checkSeekBar()V
    .locals 2

    .line 56
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->isCheckingBar:Z

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/task/AbcService$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/task/AbcService$1;-><init>(Lcom/alibaba/ailabs/genie/task/AbcService;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->execute(Ljava/lang/Runnable;)V

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->start:J

    return-void
.end method

.method private initServiceInfo()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->mAccServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->mAccServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 173
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->mAccServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    const/4 v1, -0x1

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    const/16 v1, 0x820

    .line 174
    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    const/16 v1, 0x43

    .line 178
    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const-wide/16 v1, 0x64

    .line 181
    iput-wide v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->mAccServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/AbcService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    return-void
.end method


# virtual methods
.method public getTopActivity()Ljava/lang/String;
    .locals 3

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->manager:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 216
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTopActivity error ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskService-AppAbcService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7

    .line 92
    sget-boolean v0, Lcom/alibaba/ailabs/genie/task/TaskApplication;->disableVideoRecommend:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_7

    .line 96
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 p1, 0x800

    if-eq v0, p1, :cond_1

    goto/16 :goto_1

    .line 99
    :cond_1
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->isPlayer:Z

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->getInstance()Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->isRemoving()Z

    move-result p1

    if-nez p1, :cond_7

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 101
    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->start:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    const/16 p1, 0x3e8

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 102
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->handler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->start:J

    .line 104
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/AbcService;->checkSeekBar()V

    goto :goto_1

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 114
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_4

    .line 116
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->lastClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 117
    :cond_4
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->lastPkg:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    .line 120
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/AbcService;->getTopActivity()Ljava/lang/String;

    move-result-object v1

    .line 123
    :cond_6
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->lastClass:Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->lastPkg:Ljava/lang/String;

    .line 126
    sget-object p1, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig;->PLAYER:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->isPlayer:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->isPlayer:Z

    .line 131
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->getInstance()Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    move-result-object p1

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->isPlayer:Z

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->onPlayChange(Z)V

    .line 132
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->isPlayer:Z

    if-nez p1, :cond_7

    .line 133
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->isCheckingBar:Z

    :cond_7
    :goto_1
    return-void
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "TaskService-AppAbcService"

    const-string v1, "onCreate"

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreate()V

    const-string v0, "activity"

    .line 48
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/AbcService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->manager:Landroid/app/ActivityManager;

    .line 49
    sget-object v0, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig;->PLAYER:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/AbcService;->getTopActivity()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService;->isPlayer:Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "TaskService-AppAbcService"

    const-string v1, "onDestroy"

    .line 166
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onInterrupt()V
    .locals 2

    const-string v0, "TaskService-AppAbcService"

    const-string v1, "onInterrupt"

    .line 161
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onServiceConnected()V
    .locals 2

    const-string v0, "TaskService-AppAbcService"

    const-string v1, "onServiceConnected"

    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 145
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/AbcService;->initServiceInfo()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p1, "TaskService-AppAbcService"

    const-string p2, "onStartCommand"

    .line 155
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 150
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
