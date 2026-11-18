.class Landroid/support/rastermill/FrameSequenceDrawable$DecodeRunnable;
.super Ljava/lang/Object;
.source "FrameSequenceDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/FrameSequenceDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodeRunnable"
.end annotation


# instance fields
.field private mDrawable:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/rastermill/FrameSequenceDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/rastermill/FrameSequenceDrawable;",
            ">;)V"
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable$DecodeRunnable;->mDrawable:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 223
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable$DecodeRunnable;->mDrawable:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/rastermill/FrameSequenceDrawable;

    if-eqz v0, :cond_b

    .line 226
    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 230
    :cond_1
    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->access$000(Landroid/support/rastermill/FrameSequenceDrawable;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 231
    :try_start_0
    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->access$100(Landroid/support/rastermill/FrameSequenceDrawable;)Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v1

    return-void

    .line 233
    :cond_2
    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->access$200(Landroid/support/rastermill/FrameSequenceDrawable;)I

    move-result v2

    if-gez v2, :cond_3

    .line 235
    monitor-exit v1

    return-void

    .line 237
    :cond_3
    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->access$300(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x2

    .line 238
    invoke-static {v0, v4}, Landroid/support/rastermill/FrameSequenceDrawable;->access$402(Landroid/support/rastermill/FrameSequenceDrawable;I)I

    .line 239
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v1, v2, -0x2

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 244
    :try_start_1
    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->access$500(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/support/rastermill/FrameSequence$State;

    move-result-object v9

    invoke-virtual {v9, v2, v3, v1}, Landroid/support/rastermill/FrameSequence$State;->getFrame(ILandroid/graphics/Bitmap;I)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    :goto_0
    const-wide/16 v2, 0x14

    cmp-long v9, v5, v2

    if-gez v9, :cond_4

    const-wide/16 v5, 0x64

    .line 257
    :cond_4
    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->access$000(Landroid/support/rastermill/FrameSequenceDrawable;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 258
    :try_start_2
    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->access$100(Landroid/support/rastermill/FrameSequenceDrawable;)Z

    move-result v3

    const/4 v9, 0x0

    if-eqz v3, :cond_5

    .line 259
    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->access$300(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 260
    invoke-static {v0, v9}, Landroid/support/rastermill/FrameSequenceDrawable;->access$302(Landroid/support/rastermill/FrameSequenceDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-object v9, v1

    goto :goto_2

    .line 261
    :cond_5
    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->access$200(Landroid/support/rastermill/FrameSequenceDrawable;)I

    move-result v3

    if-ltz v3, :cond_8

    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->access$400(Landroid/support/rastermill/FrameSequenceDrawable;)I

    move-result v3

    if-ne v3, v4, :cond_8

    if-eqz v1, :cond_6

    const-wide v3, 0x7fffffffffffffffL

    goto :goto_1

    .line 263
    :cond_6
    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->access$700(Landroid/support/rastermill/FrameSequenceDrawable;)J

    move-result-wide v3

    add-long/2addr v3, v5

    :goto_1
    invoke-static {v0, v3, v4}, Landroid/support/rastermill/FrameSequenceDrawable;->access$602(Landroid/support/rastermill/FrameSequenceDrawable;J)J

    const/4 v3, 0x3

    .line 264
    invoke-static {v0, v3}, Landroid/support/rastermill/FrameSequenceDrawable;->access$402(Landroid/support/rastermill/FrameSequenceDrawable;I)I

    if-nez v1, :cond_7

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 268
    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->access$600(Landroid/support/rastermill/FrameSequenceDrawable;)J

    move-result-wide v10

    cmp-long v1, v10, v3

    if-gez v1, :cond_7

    add-long/2addr v3, v5

    .line 269
    invoke-static {v0, v3, v4}, Landroid/support/rastermill/FrameSequenceDrawable;->access$602(Landroid/support/rastermill/FrameSequenceDrawable;J)J

    :cond_7
    const/4 v8, 0x1

    .line 273
    :cond_8
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_9

    .line 275
    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->access$600(Landroid/support/rastermill/FrameSequenceDrawable;)J

    move-result-wide v1

    invoke-virtual {v0, v0, v1, v2}, Landroid/support/rastermill/FrameSequenceDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_9
    if-eqz v9, :cond_a

    .line 280
    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->access$800(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_a
    return-void

    :catchall_0
    move-exception v0

    .line 273
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 239
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_b
    :goto_3
    return-void
.end method
