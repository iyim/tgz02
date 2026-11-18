.class Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;
.super Ljava/lang/Object;
.source "FrameAnimController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;-><init>(Landroid/view/TextureView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1    # Landroid/os/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$100(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MSG_STOP"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$400(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$200(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 86
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$400(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 87
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$000(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 88
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$400(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$500(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return v2

    .line 92
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$000(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 93
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$600(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 95
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$600(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 98
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$302(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return v2

    .line 101
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$300(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 102
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$702(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;J)J

    .line 103
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1, v2}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$802(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;I)I

    .line 104
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$900(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)I

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$1000(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 105
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$1100(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v3, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2$1;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2$1;-><init>(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;)V

    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$600(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 114
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 116
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$600(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v3, v3, v4

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {v5}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$300(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 117
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {v5}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$600(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/view/TextureView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/TextureView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$300(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v5, v4

    .line 118
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$1200(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 119
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$1200(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 120
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$300(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$1200(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {v5}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$1300(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :catch_0
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$600(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 127
    :cond_7
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$904(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)I

    .line 128
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$300(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$200(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-le p1, v0, :cond_9

    .line 129
    :cond_8
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$900(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$1400(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;I)V

    .line 131
    :cond_9
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$302(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 132
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$900(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)I

    move-result p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$200(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$1500(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 133
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$1000(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 134
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$1100(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2$2;-><init>(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 142
    :cond_a
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$400(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 143
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$400(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$500(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_b
    :goto_0
    return v2
.end method
