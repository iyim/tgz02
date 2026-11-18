.class public Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "AccessibilityMonitorService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AccessibilityMonitorService"

.field private static mActivityChangeListener:Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IActivityChangeListener;

.field private static mKeyEventListener:Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IKeyEventListener;

.field private static mPackageChangeListener:Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IPackageChangeListener;

.field private static mTouchEventListener:Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/ITouchEventListener;

.field private static mWindowChangeListener:Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IWindowChangeListener;


# instance fields
.field mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field private mCurrentPackage:Ljava/lang/String;

.field private mTopPackageAndActivityName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getActivityChangeListener()Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IActivityChangeListener;
    .locals 1

    .line 210
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->mActivityChangeListener:Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IActivityChangeListener;

    return-object v0
.end method

.method public static getKeyEventListener()Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IKeyEventListener;
    .locals 1

    .line 234
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->mKeyEventListener:Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IKeyEventListener;

    return-object v0
.end method

.method public static getPackageChangeListener()Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IPackageChangeListener;
    .locals 1

    .line 202
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->mPackageChangeListener:Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IPackageChangeListener;

    return-object v0
.end method

.method public static getTouchEventListener()Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/ITouchEventListener;
    .locals 1

    .line 226
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->mTouchEventListener:Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/ITouchEventListener;

    return-object v0
.end method

.method public static getWindowChangeListener()Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IWindowChangeListener;
    .locals 1

    .line 218
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->mWindowChangeListener:Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IWindowChangeListener;

    return-object v0
.end method

.method private onActivityChange(Ljava/lang/String;)V
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityChange. packageAndActivityName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityMonitorService"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->getActivityChangeListener()Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IActivityChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->getActivityChangeListener()Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IActivityChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IActivityChangeListener;->onActivityChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onPackageChange(Ljava/lang/String;)V
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPackageChange. packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityMonitorService"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->getPackageChangeListener()Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IPackageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->getPackageChangeListener()Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IPackageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IPackageChangeListener;->onPackageChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onWindowChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowChange. topPackageAndActivityName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityMonitorService"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->getWindowChangeListener()Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IWindowChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->getWindowChangeListener()Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IWindowChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IWindowChangeListener;->onWindowChange(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setActivityChangeListener(Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IActivityChangeListener;)V
    .locals 0

    .line 214
    sput-object p0, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->mActivityChangeListener:Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IActivityChangeListener;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setKeyEventListener(Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IKeyEventListener;)V
    .locals 0

    .line 238
    sput-object p0, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->mKeyEventListener:Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IKeyEventListener;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setPackageChangeListener(Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IPackageChangeListener;)V
    .locals 0

    .line 206
    sput-object p0, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->mPackageChangeListener:Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IPackageChangeListener;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private setServiceInfoInner()V
    .locals 1

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setTouchEventListener(Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/ITouchEventListener;)V
    .locals 0

    .line 230
    sput-object p0, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->mTouchEventListener:Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/ITouchEventListener;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setWindowChangeListener(Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IWindowChangeListener;)V
    .locals 0

    .line 222
    sput-object p0, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->mWindowChangeListener:Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IWindowChangeListener;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    .line 113
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    const-string v2, "AccessibilityMonitorService"

    if-eq v0, v1, :cond_2

    const/16 v1, 0x800

    if-eq v0, v1, :cond_1

    const/high16 p1, 0x100000

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p1, "TYPE_TOUCH_INTERACTION_START111111"

    .line 164
    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->getTouchEventListener()Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/ITouchEventListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 166
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->getTouchEventListener()Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/ITouchEventListener;

    move-result-object p1

    const-string v0, "AccessibilityEvent.TYPE_TOUCH_INTERACTION_START"

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/ITouchEventListener;->onTouchEvent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 170
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TYPE_WINDOW_CONTENT_CHANGED   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 118
    :cond_2
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/AppUtils;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p1, "componentName is null"

    .line 120
    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, ""

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object p1

    .line 130
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAccessibilityEvent. packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ;windowClassName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ;topPackageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ;topActivityName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 137
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 143
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->onWindowChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->mTopPackageAndActivityName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 148
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->mTopPackageAndActivityName:Ljava/lang/String;

    .line 149
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->onActivityChange(Ljava/lang/String;)V

    .line 154
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->mCurrentPackage:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 155
    iput-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->mCurrentPackage:Ljava/lang/String;

    .line 156
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->mCurrentPackage:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->onPackageChange(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 49
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreate()V

    .line 50
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    const/16 v1, 0x10

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    const v1, 0x100820

    .line 52
    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    const/16 v1, 0x21

    .line 53
    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const-wide/16 v1, 0x64

    .line 54
    iput-wide v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 55
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->setServiceInfoInner()V

    return-void
.end method

.method public onInterrupt()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 80
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->getKeyEventListener()Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IKeyEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IKeyEventListener;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    :cond_0
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onServiceConnected()V
    .locals 0

    .line 60
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 61
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->setServiceInfoInner()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->setServiceInfoInner()V

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
