.class public Lcom/alibaba/ailabs/appbox/view/ClickImageView;
.super Landroid/widget/ImageView;
.source "ClickImageView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field downTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    .line 36
    iput-wide v0, p0, Lcom/alibaba/ailabs/appbox/view/ClickImageView;->downTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, -0x1

    .line 36
    iput-wide p1, p0, Lcom/alibaba/ailabs/appbox/view/ClickImageView;->downTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, -0x1

    .line 36
    iput-wide p1, p0, Lcom/alibaba/ailabs/appbox/view/ClickImageView;->downTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 p1, -0x1

    .line 36
    iput-wide p1, p0, Lcom/alibaba/ailabs/appbox/view/ClickImageView;->downTime:J

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x99

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/16 v3, 0xff

    if-eq v0, v2, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    .line 56
    invoke-virtual {p0, v3}, Lcom/alibaba/ailabs/appbox/view/ClickImageView;->setAlpha(I)V

    .line 58
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 47
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/appbox/view/ClickImageView;->setAlpha(I)V

    return v2

    .line 50
    :cond_1
    invoke-virtual {p0, v3}, Lcom/alibaba/ailabs/appbox/view/ClickImageView;->setAlpha(I)V

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/ailabs/appbox/view/ClickImageView;->downTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/ClickImageView;->performClick()Z

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 43
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alibaba/ailabs/appbox/view/ClickImageView;->downTime:J

    .line 44
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/appbox/view/ClickImageView;->setAlpha(I)V

    return v2
.end method
