.class public Lcom/alibaba/genie/shopping/view/MyVideoView;
.super Landroid/widget/VideoView;
.source "MyVideoView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 26
    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->onMeasure(II)V

    const/4 v0, 0x0

    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/genie/shopping/view/MyVideoView;->getDefaultSize(II)I

    move-result p1

    .line 28
    invoke-static {v0, p2}, Lcom/alibaba/genie/shopping/view/MyVideoView;->getDefaultSize(II)I

    move-result p2

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/genie/shopping/view/MyVideoView;->setMeasuredDimension(II)V

    return-void
.end method
