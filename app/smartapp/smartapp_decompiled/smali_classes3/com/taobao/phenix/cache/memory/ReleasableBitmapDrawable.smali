.class public Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;
.super Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;
.source "ReleasableBitmapDrawable.java"


# instance fields
.field private mLastCallbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mReferenceListener:Lcom/taobao/phenix/cache/memory/ReleasableReferenceListener;

.field private mReleased:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p7}, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public convert2NinePatchDrawable()Landroid/graphics/drawable/NinePatchDrawable;
    .locals 2

    .line 34
    invoke-super {p0}, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->convert2NinePatchDrawable()Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    .line 35
    monitor-enter p0

    if-eqz v0, :cond_0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;->mReferenceListener:Lcom/taobao/phenix/cache/memory/ReleasableReferenceListener;

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;->mReferenceListener:Lcom/taobao/phenix/cache/memory/ReleasableReferenceListener;

    invoke-interface {v1, p0}, Lcom/taobao/phenix/cache/memory/ReleasableReferenceListener;->onReferenceDowngrade2Passable(Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;)V

    .line 39
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized downgrade2Passable()V
    .locals 1

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;->mReferenceListener:Lcom/taobao/phenix/cache/memory/ReleasableReferenceListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;->mReferenceListener:Lcom/taobao/phenix/cache/memory/ReleasableReferenceListener;

    invoke-interface {v0, p0}, Lcom/taobao/phenix/cache/memory/ReleasableReferenceListener;->onReferenceDowngrade2Passable(Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 62
    iget-boolean v0, p0, Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;->mReleased:Z

    if-nez v0, :cond_2

    .line 66
    invoke-super {p0, p1}, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 68
    invoke-virtual {p0}, Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    const/4 v0, 0x0

    .line 72
    iget-object v1, p0, Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;->mLastCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    if-ne v0, p1, :cond_0

    return-void

    .line 77
    :cond_0
    monitor-enter p0

    if-eqz v0, :cond_1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;->mReferenceListener:Lcom/taobao/phenix/cache/memory/ReleasableReferenceListener;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;->mReferenceListener:Lcom/taobao/phenix/cache/memory/ReleasableReferenceListener;

    invoke-interface {v0, p0}, Lcom/taobao/phenix/cache/memory/ReleasableReferenceListener;->onReferenceDowngrade2Passable(Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;)V

    .line 81
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;->mLastCallbackRef:Ljava/lang/ref/WeakReference;

    return-void

    :catchall_0
    move-exception p1

    .line 81
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 63
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "ReleasableBitmapDrawable has been released before drawing!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;->mReleased:Z

    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;->mReferenceListener:Lcom/taobao/phenix/cache/memory/ReleasableReferenceListener;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;->mReferenceListener:Lcom/taobao/phenix/cache/memory/ReleasableReferenceListener;

    invoke-interface {v0, p0}, Lcom/taobao/phenix/cache/memory/ReleasableReferenceListener;->onReferenceReleased(Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;)V

    .line 56
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized setReleasableReferenceListener(Lcom/taobao/phenix/cache/memory/ReleasableReferenceListener;)V
    .locals 0

    monitor-enter p0

    .line 30
    :try_start_0
    iput-object p1, p0, Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;->mReferenceListener:Lcom/taobao/phenix/cache/memory/ReleasableReferenceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
