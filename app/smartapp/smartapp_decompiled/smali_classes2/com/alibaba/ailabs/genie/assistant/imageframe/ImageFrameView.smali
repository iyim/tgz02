.class public Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;
.super Landroid/widget/ImageView;
.source "ImageFrameView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView$OnFirstDrawListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageFrameView"


# instance fields
.field private duration:I

.field private firstDrawListener:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView$OnFirstDrawListener;

.field private isFirst:Z

.field private isLastImage:Z

.field private mCurBitmap:Landroid/graphics/Bitmap;

.field private mDefaultHeight:I

.field private mDefaultRect:Landroid/graphics/Rect;

.field private mDefaultWidth:I

.field private mHandleUtil:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->isFirst:Z

    const/16 p1, 0x400

    .line 36
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mDefaultWidth:I

    const/16 p1, 0x258

    .line 39
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mDefaultHeight:I

    .line 41
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mDefaultWidth:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mDefaultHeight:I

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mDefaultRect:Landroid/graphics/Rect;

    const/16 p1, 0x32

    .line 43
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->duration:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->isFirst:Z

    const/16 p1, 0x400

    .line 36
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mDefaultWidth:I

    const/16 p1, 0x258

    .line 39
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mDefaultHeight:I

    .line 41
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mDefaultWidth:I

    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mDefaultHeight:I

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mDefaultRect:Landroid/graphics/Rect;

    const/16 p1, 0x32

    .line 43
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->duration:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->isFirst:Z

    const/16 p1, 0x400

    .line 36
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mDefaultWidth:I

    const/16 p1, 0x258

    .line 39
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mDefaultHeight:I

    .line 41
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mDefaultWidth:I

    iget p3, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mDefaultHeight:I

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mDefaultRect:Landroid/graphics/Rect;

    const/16 p1, 0x32

    .line 43
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->duration:I

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->duration:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 120
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 74
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mCurBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 80
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mDefaultWidth:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mDefaultHeight:I

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 85
    invoke-virtual {p1, v0, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 82
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mDefaultRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v4, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    :goto_1
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->isFirst:Z

    if-eqz p1, :cond_2

    .line 91
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->isFirst:Z

    .line 92
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->firstDrawListener:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView$OnFirstDrawListener;

    if-eqz p1, :cond_2

    .line 93
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView$OnFirstDrawListener;->afterFirstDraw()V

    .line 97
    :cond_2
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->isLastImage:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mHandleUtil:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->getLoaderHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 98
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 99
    iput v1, p1, Landroid/os/Message;->what:I

    .line 100
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mHandleUtil:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->getLoaderHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mHandleUtil:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->getLoaderHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    return-void
.end method

.method public resetFirst()V
    .locals 1

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->isFirst:Z

    return-void
.end method

.method public declared-synchronized setBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 112
    :try_start_0
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mCurBitmap:Landroid/graphics/Bitmap;

    .line 113
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->isLastImage:Z

    .line 114
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 116
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public setDefualtWidthAndHeight(II)V
    .locals 3

    .line 64
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mDefaultWidth:I

    .line 65
    iput p2, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mDefaultHeight:I

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mDefaultRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->duration:I

    return-void
.end method

.method public setFirstDrawListener(Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView$OnFirstDrawListener;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->firstDrawListener:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView$OnFirstDrawListener;

    return-void
.end method

.method public setHandleUtil(Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->mHandleUtil:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;

    return-void
.end method
