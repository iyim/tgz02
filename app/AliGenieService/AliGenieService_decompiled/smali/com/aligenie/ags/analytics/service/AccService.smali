.class public Lcom/aligenie/ags/analytics/service/AccService;
.super Landroid/accessibilityservice/AccessibilityService;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Landroid/media/AudioManager;

.field public final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    new-instance v0, Lcom/aligenie/ags/analytics/service/AccService$a;

    invoke-direct {v0, p0}, Lcom/aligenie/ags/analytics/service/AccService$a;-><init>(Lcom/aligenie/ags/analytics/service/AccService;)V

    iput-object v0, p0, Lcom/aligenie/ags/analytics/service/AccService;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/StringBuilder;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    invoke-static {p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-gez v0, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/aligenie/ags/analytics/service/AccService;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/StringBuilder;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 12

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "event_name"

    const-string v3, "event_type"

    const-string v4, ""

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-eq v0, v5, :cond_9

    const/4 v7, 0x2

    if-eq v0, v7, :cond_9

    const/16 v7, 0x20

    if-eq v0, v7, :cond_1

    const/16 v2, 0x1000

    if-eq v0, v2, :cond_10

    const/high16 v2, 0x100000

    if-eq v0, v2, :cond_0

    const-string p1, "AccMonitor"

    const-string v0, "Event not in monitor"

    invoke-static {p1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v2

    sput-wide v2, Lc/b/a/b/o/g;->z:J

    sget-object p1, Lc/b/a/b/o/g;->x:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lc/b/a/b/o/g;->w:Ljava/lang/Boolean;

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "android"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 1
    :cond_4
    sget-object v1, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 2
    invoke-static {v1}, Lc/b/a/b/o/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v7, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 4
    invoke-static {v7}, Lc/b/a/b/o/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto/16 :goto_1

    :cond_5
    sget-object v8, Lc/b/a/b/o/g;->r:Ljava/lang/String;

    sput-object v8, Lc/b/a/b/o/g;->o:Ljava/lang/String;

    sget-object v8, Lc/b/a/b/o/g;->s:Ljava/lang/String;

    sput-object v8, Lc/b/a/b/o/g;->p:Ljava/lang/String;

    sget-object v8, Lc/b/a/b/o/g;->t:Ljava/lang/String;

    sput-object v8, Lc/b/a/b/o/g;->q:Ljava/lang/String;

    sput-object v1, Lc/b/a/b/o/g;->r:Ljava/lang/String;

    sput-object v7, Lc/b/a/b/o/g;->s:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lc/b/a/b/o/g;->t:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/aligenie/ags/analytics/service/AccService;->a()V

    iget-object v8, p0, Lcom/aligenie/ags/analytics/service/AccService;->d:Landroid/os/Handler;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v8, v5, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v0, v9, v7}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Lc/b/a/b/o/j;

    const-string v5, "com.updateActivity"

    invoke-direct {v0, v5, p1}, Lc/b/a/b/o/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->a(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/aligenie/ags/analytics/service/AccService;->b:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iput-object v1, p0, Lcom/aligenie/ags/analytics/service/AccService;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/aligenie/ags/analytics/service/AccService;->b:Ljava/lang/String;

    .line 7
    new-instance v0, Lc/b/a/b/o/j;

    const-string v1, "com.updatePackage"

    invoke-direct {v0, v1, p1}, Lc/b/a/b/o/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->a(Ljava/lang/Object;)V

    .line 8
    :cond_6
    sget-object p1, Lc/b/a/b/o/g;->v:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_10

    sget-object p1, Lc/b/a/b/o/g;->p:Ljava/lang/String;

    const-string v0, "com.alibaba.ailabs.genie.launcher.video.search.VideoSearchActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lc/b/a/b/o/g;->p:Ljava/lang/String;

    const-string v0, "com.alibaba.ailabs.genie.launcher.videofind.SearchResultActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lc/b/a/b/o/g;->p:Ljava/lang/String;

    const-string v0, "com.alibaba.ailabs.genie.globalsearch.MainActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    :cond_7
    const-string p1, "sys_player"

    const-string v0, "prepared"

    invoke-static {v3, p1, v2, v0}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-result-object p1

    sget-object v0, Lc/b/a/b/o/g;->j:Ljava/lang/String;

    const-string v1, "traceId"

    invoke-virtual {p1, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-object v0, Lc/b/a/b/o/g;->k:Ljava/lang/String;

    const-string v1, "asrLogId"

    invoke-virtual {p1, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-object v0, Lc/b/a/b/o/g;->l:Ljava/lang/String;

    const-string v1, "commandId"

    invoke-virtual {p1, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    new-instance v0, Lc/b/a/b/o/a;

    invoke-direct {v0}, Lc/b/a/b/o/a;-><init>()V

    invoke-virtual {v0}, Lc/b/a/b/o/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_text"

    invoke-virtual {p1, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-object v0, Lc/b/a/b/o/g;->r:Ljava/lang/String;

    const-string v1, "packageName"

    invoke-virtual {p1, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-object v0, Lc/b/a/b/o/g;->s:Ljava/lang/String;

    const-string v1, "pageName"

    invoke-virtual {p1, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sput-object v6, Lc/b/a/b/o/g;->w:Ljava/lang/Boolean;

    sput-object v6, Lc/b/a/b/o/g;->x:Ljava/lang/Boolean;

    sput-object v4, Lc/b/a/b/o/g;->y:Ljava/lang/String;

    invoke-static {p1}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    goto/16 :goto_5

    :cond_8
    :goto_1
    return-void

    :cond_9
    const-string v0, "touch"

    const-string v6, "view_click"

    invoke-static {v3, v0, v2, v6}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v0, v3, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    goto :goto_2

    :cond_a
    move-object v2, v4

    :goto_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "description"

    invoke-virtual {v0, v6, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    :cond_b
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc/b/a/b/o/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "app_name"

    invoke-virtual {v0, v6, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "package_name"

    invoke-virtual {v0, v7, v6}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc/b/a/b/o/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "version"

    invoke-virtual {v0, v7, v6}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_4

    :cond_c
    const/16 v4, 0x2e

    invoke-static {v6, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    add-int/2addr v4, v5

    if-gez v4, :cond_d

    goto :goto_3

    :cond_d
    move v1, v4

    :goto_3
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v6, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    const-string v1, "class_name"

    invoke-virtual {v0, v1, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-object v1, Lc/b/a/b/o/g;->r:Ljava/lang/String;

    const-string v5, "top_package"

    invoke-virtual {v0, v5, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-object v1, Lc/b/a/b/o/g;->s:Ljava/lang/String;

    const-string v5, "top_activity"

    invoke-virtual {v0, v5, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sput-object v3, Lc/b/a/b/o/g;->B:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/b/a/b/o/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc/b/a/b/o/g;->C:Ljava/lang/String;

    sput-object v4, Lc/b/a/b/o/g;->D:Ljava/lang/String;

    sget-object v1, Lc/b/a/b/o/g;->r:Ljava/lang/String;

    invoke-static {v1}, Lc/b/a/b/o/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc/b/a/b/o/g;->E:Ljava/lang/String;

    sget-object v1, Lc/b/a/b/o/g;->s:Ljava/lang/String;

    invoke-static {v1}, Lc/b/a/b/o/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc/b/a/b/o/g;->F:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/aligenie/ags/analytics/service/AccService;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "resId"

    invoke-virtual {v0, v4, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc/b/a/b/o/g;->G:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "poi"

    invoke-virtual {v0, v4, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "left"

    invoke-virtual {v0, v4, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "top"

    invoke-virtual {v0, v4, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    iget v3, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "right"

    invoke-virtual {v0, v4, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "bottom"

    invoke-virtual {v0, v3, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v1, "poiInP"

    invoke-virtual {v0, v1, p1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    iget p1, v8, Landroid/graphics/Rect;->left:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "leftInP"

    invoke-virtual {v0, v1, p1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    iget p1, v8, Landroid/graphics/Rect;->top:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "topInP"

    invoke-virtual {v0, v1, p1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    iget p1, v8, Landroid/graphics/Rect;->right:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "rightInP"

    invoke-virtual {v0, v1, p1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    iget p1, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "bottomInP"

    invoke-virtual {v0, v1, p1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    .line 9
    sput-object v2, Lc/b/a/b/o/g;->a:Ljava/lang/String;

    .line 10
    :cond_f
    invoke-static {v0}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    :cond_10
    :goto_5
    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/aligenie/ags/analytics/service/AccService;->c:Landroid/media/AudioManager;

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    return-void
.end method

.method public onInterrupt()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lc/b/a/b/o/g;->b:Lcom/aligenie/ags/analytics/service/AccService;

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyevent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_5

    const/16 v0, 0x18

    const-string v2, "event_name"

    const-string v4, "button"

    const-string v5, "event_type"

    if-ne v1, v0, :cond_0

    const-string v0, "KEYCODE_VOLUME_UP KeyUp"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lc/b/a/b/k/b;

    invoke-direct {v0}, Lc/b/a/b/k/b;-><init>()V

    invoke-virtual {v0, v5, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "volumeUp"

    :goto_0
    invoke-virtual {v0, v2, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v0}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x19

    if-ne v1, v0, :cond_1

    const-string v0, "KEYCODE_VOLUME_DOWN KeyUp"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lc/b/a/b/k/b;

    invoke-direct {v0}, Lc/b/a/b/k/b;-><init>()V

    invoke-virtual {v0, v5, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "volumeDown"

    goto :goto_0

    :cond_1
    const/16 v0, 0x8e

    if-ne v1, v0, :cond_2

    const-string v0, "KEYCODE_F12 KeyUp"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lc/b/a/b/k/b;

    invoke-direct {v0}, Lc/b/a/b/k/b;-><init>()V

    invoke-virtual {v0, v5, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "remoteAssistant"

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v0

    const/16 v6, 0xb9

    if-ne v0, v6, :cond_3

    const-string v0, "keycode factoryrest"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lc/b/a/b/k/b;

    invoke-direct {v0}, Lc/b/a/b/k/b;-><init>()V

    invoke-virtual {v0, v5, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "factoryReset"

    goto :goto_0

    :cond_3
    const/16 v0, 0xa4

    if-ne v1, v0, :cond_4

    const-string v0, "keycode volume mute"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lc/b/a/b/k/b;

    invoke-direct {v0}, Lc/b/a/b/k/b;-><init>()V

    invoke-virtual {v0, v5, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "micMute"

    goto :goto_0

    :cond_4
    const/16 v0, 0x1a

    if-ne v1, v0, :cond_5

    const-string v0, "keycode power"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lc/b/a/b/k/b;

    invoke-direct {v0}, Lc/b/a/b/k/b;-><init>()V

    invoke-virtual {v0, v5, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "power"

    goto :goto_0

    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLowMemory()V
    .locals 6

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    const-string v0, "onLowMemory availMem:"

    invoke-static {v0}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "KB isLowMemory:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccMonitor"

    invoke-static {v1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lc/b/a/b/o/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 4
    invoke-static {v1}, Lc/b/a/b/o/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-static {v0, v2, v1}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lc/b/a/b/o/j;

    const-string v2, "com.lowmemory"

    invoke-direct {v1, v2, v0}, Lc/b/a/b/o/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onServiceConnected()V
    .locals 2

    sput-object p0, Lc/b/a/b/o/g;->b:Lcom/aligenie/ags/analytics/service/AccService;

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
