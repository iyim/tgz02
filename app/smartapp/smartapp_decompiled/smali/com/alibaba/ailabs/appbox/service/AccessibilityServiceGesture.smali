.class public Lcom/alibaba/ailabs/appbox/service/AccessibilityServiceGesture;
.super Landroid/accessibilityservice/AccessibilityService;
.source "AccessibilityServiceGesture.java"


# static fields
.field public static final ADULT_PACKAGE_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.launcher"

.field public static final CHILD_PACKAGE_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.children"

.field private static final TAG:Ljava/lang/String; = "market-accessibility"


# instance fields
.field private mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field private manager:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getTopActivityPackageName()Ljava/lang/String;
    .locals 2

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/service/AccessibilityServiceGesture;->manager:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "market-accessibility"

    const-string v1, "getTopActivityPackageName error"

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 70
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/16 v0, 0x800

    if-ne v0, p1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/service/AccessibilityServiceGesture;->getTopActivityPackageName()Ljava/lang/String;

    move-result-object p1

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAccessibilityEvent TYPE_WINDOW_CONTENT_CHANGED topActivityPackageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "market-accessibility"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.alibaba.ailabs.genie.launcher"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.alibaba.ailabs.genie.children"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 76
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->getInstance()Lcom/alibaba/ailabs/appbox/utils/AppManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->finishAllActivity()V

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 3

    const-string v0, "market-accessibility"

    const-string v1, " onCreate "

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreate()V

    const-string v0, "activity"

    .line 44
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/service/AccessibilityServiceGesture;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/service/AccessibilityServiceGesture;->manager:Landroid/app/ActivityManager;

    .line 45
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/service/AccessibilityServiceGesture;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/service/AccessibilityServiceGesture;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    const/4 v1, -0x1

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    const v1, 0x100820

    .line 47
    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    const/4 v1, 0x1

    .line 49
    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const-wide/16 v1, 0xc8

    .line 50
    iput-wide v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 51
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/service/AccessibilityServiceGesture;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    return-void
.end method

.method public onInterrupt()V
    .locals 2

    const-string v0, "market-accessibility"

    const-string v1, " onInterrupt "

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onServiceConnected()V
    .locals 2

    const-string v0, "market-accessibility"

    const-string v1, " onServiceConnected "

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/service/AccessibilityServiceGesture;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/service/AccessibilityServiceGesture;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "market-accessibility"

    const-string v1, " onStartCommand "

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/service/AccessibilityServiceGesture;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/service/AccessibilityServiceGesture;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 65
    invoke-super {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
