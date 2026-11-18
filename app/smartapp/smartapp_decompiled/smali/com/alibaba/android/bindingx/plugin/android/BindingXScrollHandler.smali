.class public Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;
.super Lcom/alibaba/android/bindingx/core/internal/AbstractScrollEventHandler;
.source "BindingXScrollHandler.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/PlatformManager$ScrollListener;


# static fields
.field private static final STATE_SCROLL_END:Ljava/lang/String; = "scrollEnd"

.field private static final STATE_SCROLL_START:Ljava/lang/String; = "scrollStart"


# instance fields
.field private mLastDx:I

.field private mLastDy:I

.field private mTx:I

.field private mTy:I


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/internal/AbstractScrollEventHandler;-><init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mTx:I

    iput p1, p0, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mTy:I

    .line 38
    iput p1, p0, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mLastDx:I

    iput p1, p0, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mLastDy:I

    return-void
.end method

.method private isSameDirection(II)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_3

    :cond_1
    if-gez p1, :cond_2

    if-gez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
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
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    iget-object p2, p0, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {p2}, Lcom/alibaba/android/bindingx/core/PlatformManager;->getScrollFactory()Lcom/alibaba/android/bindingx/core/PlatformManager$IScrollFactory;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 53
    :cond_0
    invoke-interface {p2, p1, p0}, Lcom/alibaba/android/bindingx/core/PlatformManager$IScrollFactory;->addScrollListenerWith(Ljava/lang/String;Lcom/alibaba/android/bindingx/core/PlatformManager$ScrollListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDisable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/PlatformManager;->getScrollFactory()Lcom/alibaba/android/bindingx/core/PlatformManager$IScrollFactory;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 68
    :cond_0
    invoke-interface {v0, p1, p0}, Lcom/alibaba/android/bindingx/core/PlatformManager$IScrollFactory;->removeScrollListenerWith(Ljava/lang/String;Lcom/alibaba/android/bindingx/core/PlatformManager$ScrollListener;)V

    .line 69
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/AbstractScrollEventHandler;->onDisable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onScrollEnd(FF)V
    .locals 15

    move/from16 v0, p1

    float-to-double v2, v0

    move/from16 v0, p2

    float-to-double v4, v0

    const/4 v0, 0x0

    .line 122
    new-array v14, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "scrollEnd"

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v0, p0

    invoke-super/range {v0 .. v14}, Lcom/alibaba/android/bindingx/core/internal/AbstractScrollEventHandler;->fireEventByState(Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onScrollStart()V
    .locals 16

    const/4 v0, 0x0

    .line 117
    new-array v15, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "scrollStart"

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v1, p0

    invoke-super/range {v1 .. v15}, Lcom/alibaba/android/bindingx/core/internal/AbstractScrollEventHandler;->fireEventByState(Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onScrolled(FF)V
    .locals 21

    move-object/from16 v15, p0

    move/from16 v0, p1

    move/from16 v1, p2

    .line 80
    iget v2, v15, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mContentOffsetX:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    float-to-int v14, v2

    .line 81
    iget v2, v15, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mContentOffsetY:I

    int-to-float v2, v2

    sub-float v2, v1, v2

    float-to-int v12, v2

    float-to-int v0, v0

    .line 83
    iput v0, v15, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mContentOffsetX:I

    float-to-int v0, v1

    .line 84
    iput v0, v15, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mContentOffsetY:I

    if-nez v14, :cond_0

    if-nez v12, :cond_0

    return-void

    .line 92
    :cond_0
    iget v0, v15, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mLastDy:I

    invoke-direct {v15, v12, v0}, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->isSameDirection(II)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 93
    iget v0, v15, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mContentOffsetY:I

    iput v0, v15, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mTy:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 97
    :goto_0
    iget v3, v15, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mLastDx:I

    invoke-direct {v15, v14, v3}, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->isSameDirection(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 98
    iget v0, v15, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mContentOffsetX:I

    iput v0, v15, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mTx:I

    const/4 v0, 0x1

    .line 102
    :cond_2
    iget v1, v15, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mContentOffsetX:I

    iget v3, v15, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mTx:I

    sub-int v13, v1, v3

    .line 103
    iget v1, v15, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mContentOffsetY:I

    iget v3, v15, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mTy:I

    sub-int v10, v1, v3

    .line 105
    iput v14, v15, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mLastDx:I

    .line 106
    iput v12, v15, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mLastDy:I

    if-eqz v0, :cond_3

    .line 109
    iget v0, v15, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mContentOffsetX:I

    int-to-double v3, v0

    iget v0, v15, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mContentOffsetY:I

    int-to-double v5, v0

    int-to-double v7, v14

    int-to-double v0, v12

    move/from16 v16, v12

    int-to-double v11, v13

    move/from16 p1, v13

    move/from16 v17, v14

    int-to-double v13, v10

    new-array v9, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "turn"

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move-object/from16 v20, v9

    move-wide/from16 v8, v18

    move/from16 v18, v10

    move-wide v10, v11

    move/from16 v19, p1

    move-wide v12, v13

    move-object/from16 v14, v20

    invoke-super/range {v0 .. v14}, Lcom/alibaba/android/bindingx/core/internal/AbstractScrollEventHandler;->fireEventByState(Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move/from16 v18, v10

    move/from16 v16, v12

    move/from16 v19, v13

    move/from16 v17, v14

    .line 112
    :goto_1
    iget v1, v15, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mContentOffsetX:I

    iget v2, v15, Lcom/alibaba/android/bindingx/plugin/android/BindingXScrollHandler;->mContentOffsetY:I

    move-object/from16 v0, p0

    move/from16 v3, v17

    move/from16 v4, v16

    move/from16 v5, v19

    move/from16 v6, v18

    invoke-super/range {v0 .. v6}, Lcom/alibaba/android/bindingx/core/internal/AbstractScrollEventHandler;->handleScrollEvent(IIIIII)V

    return-void
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
