.class Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SoundQualityPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public layout:Landroid/widget/RelativeLayout;

.field public line:Landroid/view/View;

.field public qualityName:Landroid/widget/TextView;

.field public vipIcon:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 130
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 131
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->item_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;->layout:Landroid/widget/RelativeLayout;

    .line 132
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->item_quality_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;->qualityName:Landroid/widget/TextView;

    .line 133
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->music_vip_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;->vipIcon:Landroid/widget/ImageView;

    .line 134
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->item_bottom_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;->line:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$1;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;-><init>(Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
