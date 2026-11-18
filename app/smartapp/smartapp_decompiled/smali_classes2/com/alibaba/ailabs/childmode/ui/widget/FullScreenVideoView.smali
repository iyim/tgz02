.class public Lcom/alibaba/ailabs/childmode/ui/widget/FullScreenVideoView;
.super Landroid/widget/VideoView;
.source "FullScreenVideoView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/FullScreenVideoView;->getDefaultSize(II)I

    move-result p1

    .line 25
    invoke-static {v0, p2}, Lcom/alibaba/ailabs/childmode/ui/widget/FullScreenVideoView;->getDefaultSize(II)I

    move-result p2

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/childmode/ui/widget/FullScreenVideoView;->setMeasuredDimension(II)V

    return-void
.end method
