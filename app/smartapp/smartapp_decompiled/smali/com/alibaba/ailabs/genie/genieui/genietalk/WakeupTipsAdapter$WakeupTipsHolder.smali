.class public Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "WakeupTipsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WakeupTipsHolder"
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private final imageWH:I

.field private rootView:Landroid/view/View;

.field private tips:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 109
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$dimen;->genie_assistant_talk_tips_image_wh:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;->imageWH:I

    .line 111
    sget v0, Lcom/alibaba/ailabs/genie/genieui/R$id;->genie_ui_wakeup_tips_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;->imageView:Landroid/widget/ImageView;

    .line 112
    sget v0, Lcom/alibaba/ailabs/genie/genieui/R$id;->rootview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;->rootView:Landroid/view/View;

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;->imageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder$1;-><init>(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 122
    :cond_0
    sget v0, Lcom/alibaba/ailabs/genie/genieui/R$id;->genie_ui_wakeup_tips_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;->tips:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;)Landroid/widget/TextView;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;->tips:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;)Landroid/view/View;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;->rootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;)I
    .locals 0

    .line 102
    iget p0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;->imageWH:I

    return p0
.end method
