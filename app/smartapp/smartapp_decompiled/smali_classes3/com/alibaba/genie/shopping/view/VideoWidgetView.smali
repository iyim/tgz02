.class public Lcom/alibaba/genie/shopping/view/VideoWidgetView;
.super Landroid/widget/FrameLayout;
.source "VideoWidgetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/shopping/view/VideoWidgetView$IVideoWidgetListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoWidgetView"


# instance fields
.field private isMute:Z

.field private mContext:Landroid/content/Context;

.field private mIvVolume:Landroid/widget/ImageView;

.field private mListener:Lcom/alibaba/genie/shopping/view/VideoWidgetView$IVideoWidgetListener;

.field private mTVClose:Landroid/widget/TextView;

.field private mTVtime:Landroid/widget/TextView;

.field private mViewSplit:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/alibaba/genie/shopping/view/VideoWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/genie/shopping/view/VideoWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 26
    iput-boolean p2, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->isMute:Z

    .line 38
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1

    .line 42
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$layout;->layout_video_widget:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 45
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->view_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->mTVtime:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->view_split:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->mViewSplit:Landroid/view/View;

    .line 49
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->iv_volume:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->mIvVolume:Landroid/widget/ImageView;

    .line 50
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->mTVClose:Landroid/widget/TextView;

    return-void
.end method

.method public isMute()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->isMute:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->view_root:I

    if-ne p1, v0, :cond_0

    .line 98
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->mListener:Lcom/alibaba/genie/shopping/view/VideoWidgetView$IVideoWidgetListener;

    if-eqz p1, :cond_0

    .line 99
    invoke-interface {p1}, Lcom/alibaba/genie/shopping/view/VideoWidgetView$IVideoWidgetListener;->onClick()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->mListener:Lcom/alibaba/genie/shopping/view/VideoWidgetView$IVideoWidgetListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->mListener:Lcom/alibaba/genie/shopping/view/VideoWidgetView$IVideoWidgetListener;

    :cond_0
    return-void
.end method

.method public setListener(Lcom/alibaba/genie/shopping/view/VideoWidgetView$IVideoWidgetListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->mListener:Lcom/alibaba/genie/shopping/view/VideoWidgetView$IVideoWidgetListener;

    return-void
.end method

.method public setTimer(JJ)V
    .locals 3

    const-wide/16 p3, 0x3e8

    .line 78
    div-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    .line 80
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->mTVtime:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->mViewSplit:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p3, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->mTVtime:Landroid/widget/TextView;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object p3, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->mTVtime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$string;->ad_time:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public showClose(I)V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->mTVtime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->mViewSplit:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->mTVClose:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->mTVtime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/shopping/R$string;->ad_time:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showVolume()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->mIvVolume:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public toggleVolume()V
    .locals 2

    .line 62
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->isMute:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->isMute:Z

    .line 63
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->mIvVolume:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->isMute:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method
