.class public Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;
.super Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;
.source "BindingXTouchHandler.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private mDownX:F

.field private mDownY:F

.field private mDx:D

.field private mDy:D

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;-><init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V

    .line 59
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

    .line 60
    new-instance p3, Landroid/view/GestureDetector;

    invoke-direct {p3, p1, p0, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mGestureDetector:Landroid/view/GestureDetector;

    .line 62
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mMaximumFlingVelocity:I

    .line 64
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mMinimumFlingVelocity:I

    return-void
.end method

.method private varargs fireEventByState(Ljava/lang/String;DDFF[Ljava/lang/Object;)V
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mCallback:Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;

    if-eqz v0, :cond_2

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "state"

    .line 253
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {v1}, Lcom/alibaba/android/bindingx/core/PlatformManager;->getResolutionTranslator()Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v1, p2, p3, v3}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide p2

    .line 255
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {v1}, Lcom/alibaba/android/bindingx/core/PlatformManager;->getResolutionTranslator()Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v1, p4, p5, v3}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide p4

    .line 256
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "deltaX"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "deltaY"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "end"

    .line 258
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    const-string/jumbo v1, "velocityX"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    const-string/jumbo p7, "velocityY"

    invoke-interface {v0, p7, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_0
    iget-object p6, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mToken:Ljava/lang/String;

    const-string/jumbo p7, "token"

    invoke-interface {v0, p7, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p8, :cond_1

    .line 265
    array-length p6, p8

    if-lez p6, :cond_1

    aget-object p6, p8, v2

    instance-of p6, p6, Ljava/util/Map;

    if-eqz p6, :cond_1

    .line 266
    aget-object p6, p8, v2

    check-cast p6, Ljava/util/Map;

    invoke-interface {v0, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 269
    :cond_1
    iget-object p6, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mCallback:Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;

    invoke-interface {p6, v0}, Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;->callback(Ljava/lang/Object;)V

    .line 270
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, ">>>>>>>>>>>fire event:("

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    :cond_2
    return-void
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

.method public onBindExpression(Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;Ljava/util/List;Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;",
            ")V"
        }
    .end annotation

    .line 210
    invoke-super/range {p0 .. p5}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->onBindExpression(Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;Ljava/util/List;Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;)V

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

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mAnchorInstanceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mInstanceId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mAnchorInstanceId:Ljava/lang/String;

    .line 189
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {v1}, Lcom/alibaba/android/bindingx/core/PlatformManager;->getViewFinder()Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, p1, v3}, Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;->findViewBy(Ljava/lang/String;[Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 191
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ExpressionTouchHandler] onCreate failed. sourceView not found:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;)V

    return v4

    .line 194
    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ExpressionTouchHandler] onCreate success. {source:"

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

.method public onDestroy()V
    .locals 2

    .line 226
    invoke-super {p0}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->onDestroy()V

    .line 227
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mExpressionHoldersMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mExpressionHoldersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 229
    iput-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mExpressionHoldersMap:Ljava/util/Map;

    .line 231
    :cond_0
    iput-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mExitExpressionPair:Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    .line 232
    iput-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mCallback:Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;

    return-void
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

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mAnchorInstanceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mInstanceId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mAnchorInstanceId:Ljava/lang/String;

    .line 216
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {v1}, Lcom/alibaba/android/bindingx/core/PlatformManager;->getViewFinder()Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, p1, v3}, Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;->findViewBy(Ljava/lang/String;[Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 218
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 220
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove touch listener success.["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    return v2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onExit(Ljava/util/Map;)V
    .locals 10
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

    const-string v0, "internal_x"

    .line 237
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-string v0, "internal_y"

    .line 238
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const/4 p1, 0x0

    .line 239
    new-array v9, p1, [Ljava/lang/Object;

    const-string v2, "exit"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->fireEventByState(Ljava/lang/String;DDFF[Ljava/lang/Object;)V

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    if-nez p1, :cond_0

    .line 132
    iget p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownX:F

    .line 133
    iget p3, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownY:F

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p3

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    move v6, p3

    move p3, p1

    move p1, v6

    :goto_0
    const/4 p4, 0x0

    if-nez p2, :cond_1

    return p4

    .line 143
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 144
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr v0, p1

    sub-float/2addr p2, p3

    .line 149
    :try_start_0
    sget-boolean p1, Lcom/alibaba/android/bindingx/core/LogProxy;->sEnableLog:Z

    if-eqz p1, :cond_2

    .line 150
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string p3, "[TouchHandler] pan moved. (x:%f,y:%f)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, p4

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, p3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    .line 152
    :cond_2
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mScope:Ljava/util/Map;

    float-to-double v1, v0

    float-to-double v3, p2

    iget-object p2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {p2}, Lcom/alibaba/android/bindingx/core/PlatformManager;->getResolutionTranslator()Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/bindingx/core/internal/JSMath;->applyXYToScope(Ljava/util/Map;DDLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V

    .line 153
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mExitExpressionPair:Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    iget-object p2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mScope:Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->evaluateExitExpression(Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 154
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mExpressionHoldersMap:Ljava/util/Map;

    iget-object p2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mScope:Ljava/util/Map;

    const-string p3, "pan"

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->consumeExpression(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string/jumbo p2, "runtime error"

    .line 157
    invoke-static {p2, p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return p4
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
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
    .locals 13

    .line 70
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_0

    .line 71
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto/16 :goto_0

    .line 110
    :cond_1
    iput v3, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownX:F

    .line 111
    iput v3, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownY:F

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->clearExpressions()V

    const-string v5, "cancel"

    .line 113
    iget-wide v6, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDx:D

    iget-wide v8, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDy:D

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v12, v0, [Ljava/lang/Object;

    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->fireEventByState(Ljava/lang/String;DDFF[Ljava/lang/Object;)V

    .line 114
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_6

    .line 115
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 116
    iput-object v2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 82
    :cond_2
    iget p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownX:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_3

    iget p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownY:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_3

    .line 83
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownX:F

    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownY:F

    const-string/jumbo v2, "start"

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 85
    new-array v9, v0, [Ljava/lang/Object;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->fireEventByState(Ljava/lang/String;DDFF[Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownX:F

    sub-float/2addr p1, v0

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDx:D

    .line 89
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownY:F

    sub-float/2addr p1, v0

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDy:D

    goto :goto_0

    .line 92
    :cond_4
    iput v3, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownX:F

    .line 93
    iput v3, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownY:F

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->clearExpressions()V

    .line 96
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v3, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mMaximumFlingVelocity:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 97
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    .line 98
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    const-string v4, "end"

    .line 100
    iget-wide v5, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDx:D

    iget-wide v7, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDy:D

    new-array v11, v0, [Ljava/lang/Object;

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->fireEventByState(Ljava/lang/String;DDFF[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 102
    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDx:D

    .line 103
    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDy:D

    .line 104
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_6

    .line 105
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 106
    iput-object v2, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 77
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownX:F

    .line 78
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mDownY:F

    const-string/jumbo v2, "start"

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 79
    new-array v9, v0, [Ljava/lang/Object;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->fireEventByState(Ljava/lang/String;DDFF[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo v0, "runtime error "

    .line 121
    invoke-static {v0, p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onUserIntercept(Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
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

    const-string v0, "internal_x"

    .line 244
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-string v0, "internal_y"

    .line 245
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const/4 p2, 0x1

    .line 246
    new-array v9, p2, [Ljava/lang/Object;

    const-string p2, "interceptor"

    invoke-static {p2, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v9, p2

    const-string v2, "interceptor"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->fireEventByState(Ljava/lang/String;DDFF[Ljava/lang/Object;)V

    return-void
.end method
