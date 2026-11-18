.class public Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "AccessibilityMonitorService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GenieUiMonitor"

.field private static mActivityChangeListener:Lcom/alibaba/ailabs/genie/genieui/interfaces/IActivityChangeListener;

.field private static mPackageChangeListener:Lcom/alibaba/ailabs/genie/genieui/interfaces/IPackageChangeListener;

.field private static mTouchStartListener:Lcom/alibaba/ailabs/genie/genieui/interfaces/ITouchStartListener;

.field private static mWindowChangeListener:Lcom/alibaba/ailabs/genie/genieui/interfaces/IWindowChangeListener;


# instance fields
.field mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field private mCurrentPackage:Ljava/lang/String;

.field private mTopPackageAndActivityName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getActivityChangeListener()Lcom/alibaba/ailabs/genie/genieui/interfaces/IActivityChangeListener;
    .locals 1

    .line 151
    sget-object v0, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->mActivityChangeListener:Lcom/alibaba/ailabs/genie/genieui/interfaces/IActivityChangeListener;

    return-object v0
.end method

.method public static getPackageChangeListener()Lcom/alibaba/ailabs/genie/genieui/interfaces/IPackageChangeListener;
    .locals 1

    .line 134
    sget-object v0, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->mPackageChangeListener:Lcom/alibaba/ailabs/genie/genieui/interfaces/IPackageChangeListener;

    return-object v0
.end method

.method public static getTouchStartListener()Lcom/alibaba/ailabs/genie/genieui/interfaces/ITouchStartListener;
    .locals 1

    .line 146
    sget-object v0, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->mTouchStartListener:Lcom/alibaba/ailabs/genie/genieui/interfaces/ITouchStartListener;

    return-object v0
.end method

.method public static getWindowChangeListener()Lcom/alibaba/ailabs/genie/genieui/interfaces/IWindowChangeListener;
    .locals 1

    .line 159
    sget-object v0, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->mWindowChangeListener:Lcom/alibaba/ailabs/genie/genieui/interfaces/IWindowChangeListener;

    return-object v0
.end method

.method private onActivityChange(Ljava/lang/String;)V
    .locals 1

    .line 122
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->getActivityChangeListener()Lcom/alibaba/ailabs/genie/genieui/interfaces/IActivityChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->getActivityChangeListener()Lcom/alibaba/ailabs/genie/genieui/interfaces/IActivityChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/interfaces/IActivityChangeListener;->onActivityChange(Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private onPackageChange(Ljava/lang/String;)V
    .locals 1

    .line 128
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->getPackageChangeListener()Lcom/alibaba/ailabs/genie/genieui/interfaces/IPackageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->getPackageChangeListener()Lcom/alibaba/ailabs/genie/genieui/interfaces/IPackageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/interfaces/IPackageChangeListener;->onPackageChange(Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private onWindowChange(Ljava/lang/String;)V
    .locals 1

    .line 116
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->getWindowChangeListener()Lcom/alibaba/ailabs/genie/genieui/interfaces/IWindowChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->getWindowChangeListener()Lcom/alibaba/ailabs/genie/genieui/interfaces/IWindowChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/interfaces/IWindowChangeListener;->onWindowChange(Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setActivityChangeListener(Lcom/alibaba/ailabs/genie/genieui/interfaces/IActivityChangeListener;)V
    .locals 0

    .line 155
    sput-object p0, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->mActivityChangeListener:Lcom/alibaba/ailabs/genie/genieui/interfaces/IActivityChangeListener;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setPackageChangeListener(Lcom/alibaba/ailabs/genie/genieui/interfaces/IPackageChangeListener;)V
    .locals 0

    .line 138
    sput-object p0, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->mPackageChangeListener:Lcom/alibaba/ailabs/genie/genieui/interfaces/IPackageChangeListener;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTouchStartListener(Lcom/alibaba/ailabs/genie/genieui/interfaces/ITouchStartListener;)V
    .locals 0

    .line 142
    sput-object p0, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->mTouchStartListener:Lcom/alibaba/ailabs/genie/genieui/interfaces/ITouchStartListener;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setWindowChangeListener(Lcom/alibaba/ailabs/genie/genieui/interfaces/IWindowChangeListener;)V
    .locals 0

    .line 163
    sput-object p0, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->mWindowChangeListener:Lcom/alibaba/ailabs/genie/genieui/interfaces/IWindowChangeListener;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    .line 65
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    .line 66
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/utils/AppUtils;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "GenieUiMonitor"

    if-nez v0, :cond_0

    const-string p1, "componentName is null"

    .line 68
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAccessibilityEvent.  ;topPackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ;topActivityName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_0

    .line 80
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onAccessibilityEvent type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " topPackageAndActivityName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x20

    if-eq p1, v3, :cond_4

    const/16 v0, 0x800

    if-eq p1, v0, :cond_3

    const/high16 v0, 0x100000

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 100
    :cond_2
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->getTouchStartListener()Lcom/alibaba/ailabs/genie/genieui/interfaces/ITouchStartListener;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string p1, " type_touch_interaction_start "

    .line 101
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->getTouchStartListener()Lcom/alibaba/ailabs/genie/genieui/interfaces/ITouchStartListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/genieui/interfaces/ITouchStartListener;->onTouchStart()V

    goto :goto_0

    .line 93
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->mCurrentPackage:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 94
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->mCurrentPackage:Ljava/lang/String;

    .line 95
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->mCurrentPackage:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->onPackageChange(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, " type_window_state_changed "

    .line 84
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->mTopPackageAndActivityName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 86
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->mTopPackageAndActivityName:Ljava/lang/String;

    const-string p1, " type_window_content_changed onActivityChange"

    .line 87
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->onWindowChange(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 41
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreate()V

    .line 42
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    const/4 v1, -0x1

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    const v1, 0x100820

    .line 44
    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    const/4 v1, 0x1

    .line 46
    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const-wide/16 v1, 0xc8

    .line 47
    iput-wide v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 48
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    return-void
.end method

.method public onInterrupt()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onServiceConnected()V
    .locals 1

    .line 53
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
