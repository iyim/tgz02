.class public Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;
.super Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;
.source "BindingXPinchHandler.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field private mAbsoluteScaleFactor:D

.field private mInProgress:Z

.field private mPointerIds:[I

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;-><init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V

    const/4 p2, 0x2

    .line 48
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mPointerIds:[I

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 49
    iput-wide p2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mAbsoluteScaleFactor:D

    .line 53
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    :goto_0
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 54
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p3, v0, :cond_1

    .line 55
    new-instance p3, Landroid/view/ScaleGestureDetector;

    invoke-direct {p3, p1, p0, p2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    goto :goto_1

    .line 57
    :cond_1
    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    :goto_1
    return-void
.end method

.method private varargs fireEventByState(Ljava/lang/String;D[Ljava/lang/Object;)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mCallback:Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;

    if-eqz v0, :cond_1

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "state"

    .line 118
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "scale"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mToken:Ljava/lang/String;

    const-string/jumbo v2, "token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 122
    array-length v1, p4

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v2, p4, v1

    instance-of v2, v2, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 123
    aget-object p4, p4, v1

    check-cast p4, Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 126
    :cond_0
    iget-object p4, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mCallback:Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;

    invoke-interface {p4, v0}, Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;->callback(Ljava/lang/Object;)V

    .line 127
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ">>>>>>>>>>>fire event:("

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private pinchEnd()V
    .locals 5

    .line 172
    iget-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mInProgress:Z

    if-eqz v0, :cond_0

    const-string v0, "[PinchHandler] pinch gesture end"

    .line 173
    invoke-static {v0}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    .line 174
    iget-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mAbsoluteScaleFactor:D

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "end"

    invoke-direct {p0, v4, v0, v1, v3}, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->fireEventByState(Ljava/lang/String;D[Ljava/lang/Object;)V

    .line 176
    iput-boolean v2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mInProgress:Z

    .line 177
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mPointerIds:[I

    const/4 v1, -0x1

    aput v1, v0, v2

    const/4 v2, 0x1

    .line 178
    aput v1, v0, v2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 179
    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mAbsoluteScaleFactor:D

    :cond_0
    return-void
.end method

.method private pinchStart()V
    .locals 4

    const-string v0, "[PinchHandler] pinch gesture begin"

    .line 167
    invoke-static {v0}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 168
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "start"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->fireEventByState(Ljava/lang/String;D[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onActivityPause()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityResume()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onCreate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mAnchorInstanceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mInstanceId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mAnchorInstanceId:Ljava/lang/String;

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {v1}, Lcom/alibaba/android/bindingx/core/PlatformManager;->getViewFinder()Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, p1, v3}, Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;->findViewBy(Ljava/lang/String;[Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[BindingXPinchHandler] onCreate failed. sourceView not found:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;)V

    return v4

    .line 81
    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BindingXPinchHandler] onCreate success. {source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",type:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    return v2
.end method

.method public onDisable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mAnchorInstanceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mInstanceId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mAnchorInstanceId:Ljava/lang/String;

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {v1}, Lcom/alibaba/android/bindingx/core/PlatformManager;->getViewFinder()Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, p1, v3}, Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;->findViewBy(Ljava/lang/String;[Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove touch listener success.["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 97
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return v2

    :cond_1
    return v4
.end method

.method protected onExit(Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "s"

    .line 63
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 p1, 0x0

    .line 64
    new-array p1, p1, [Ljava/lang/Object;

    const-string v2, "exit"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->fireEventByState(Ljava/lang/String;D[Ljava/lang/Object;)V

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    .line 188
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    .line 189
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    iget-wide v2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mAbsoluteScaleFactor:D

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    iput-wide v2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mAbsoluteScaleFactor:D

    .line 194
    :try_start_0
    sget-boolean p1, Lcom/alibaba/android/bindingx/core/LogProxy;->sEnableLog:Z

    if-eqz p1, :cond_1

    .line 195
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string v0, "[PinchHandler] current scale factor: %f"

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mAbsoluteScaleFactor:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    .line 197
    :cond_1
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mScope:Ljava/util/Map;

    iget-wide v2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mAbsoluteScaleFactor:D

    invoke-static {p1, v2, v3}, Lcom/alibaba/android/bindingx/core/internal/JSMath;->applyScaleFactorToScope(Ljava/util/Map;D)V

    .line 198
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mExitExpressionPair:Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mScope:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->evaluateExitExpression(Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 199
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mExpressionHoldersMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mScope:Ljava/util/Map;

    const-string v2, "pinch"

    invoke-virtual {p0, p1, v0, v2}, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->consumeExpression(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo v0, "runtime error"

    .line 202
    invoke-static {v0, p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 133
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-boolean p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mInProgress:Z

    if-eqz p1, :cond_5

    .line 153
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 154
    iget-object v2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mPointerIds:[I

    aget v0, v2, v0

    if-eq p1, v0, :cond_1

    aget v0, v2, v1

    if-ne p1, v0, :cond_5

    .line 156
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->pinchEnd()V

    goto :goto_0

    .line 140
    :cond_2
    iget-boolean p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mInProgress:Z

    if-nez p1, :cond_5

    .line 141
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mPointerIds:[I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    aput v0, p1, v1

    .line 142
    iput-boolean v1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mInProgress:Z

    .line 143
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->pinchStart()V

    goto :goto_0

    .line 149
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->pinchEnd()V

    goto :goto_0

    .line 135
    :cond_4
    iput-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mInProgress:Z

    .line 136
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mPointerIds:[I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    aput v2, p1, v0

    .line 137
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mPointerIds:[I

    const/4 v0, -0x1

    aput v0, p1, v1

    .line 163
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onUserIntercept(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "s"

    .line 69
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 p2, 0x1

    .line 70
    new-array p2, p2, [Ljava/lang/Object;

    const-string v2, "interceptor"

    invoke-static {v2, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, p2, v3

    invoke-direct {p0, v2, v0, v1, p2}, Lcom/alibaba/android/bindingx/core/internal/BindingXPinchHandler;->fireEventByState(Ljava/lang/String;D[Ljava/lang/Object;)V

    return-void
.end method
