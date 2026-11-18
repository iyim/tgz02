.class public Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;
.super Landroid/widget/LinearLayout;
.source "VoiceprintGuideHeaderView.java"


# instance fields
.field private img_line_1:Landroid/view/View;

.field private img_line_2:Landroid/view/View;

.field private img_line_3:Landroid/view/View;

.field private img_line_4:Landroid/view/View;

.field private tv_index_1:Landroid/widget/TextView;

.field private tv_index_2:Landroid/widget/TextView;

.field private tv_index_3:Landroid/widget/TextView;

.field private tv_index_4:Landroid/widget/TextView;

.field private tv_index_5:Landroid/widget/TextView;

.field private tv_name_1:Landroid/widget/TextView;

.field private tv_name_2:Landroid/widget/TextView;

.field private tv_name_3:Landroid/widget/TextView;

.field private tv_name_4:Landroid/widget/TextView;

.field private tv_name_5:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/genie/shopping/R$layout;->activity_voiceprint_guide_header:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 55
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->index_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_1:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->line_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_1:Landroid/view/View;

    .line 57
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->name_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_1:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->index_2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_2:Landroid/widget/TextView;

    .line 60
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->line_2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_2:Landroid/view/View;

    .line 61
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->name_2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_2:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->index_3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_3:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->line_3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_3:Landroid/view/View;

    .line 65
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->name_3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_3:Landroid/widget/TextView;

    .line 67
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->index_4:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_4:Landroid/widget/TextView;

    .line 68
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->line_4:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_4:Landroid/view/View;

    .line 69
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->name_4:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_4:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->index_5:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_5:Landroid/widget/TextView;

    .line 72
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->name_5:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_5:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_1:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_blue_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_1:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 77
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_2:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_white_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_2:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_bai:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_3:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_white_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_3:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_bai:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_4:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_4:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_white_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 91
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_4:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_4:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_bai:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_5:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_5:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_white_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 96
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_5:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_bai:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public setIndex(I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_5

    const/4 v1, 0x5

    if-le p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 105
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_1:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_blue_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 107
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_1:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 108
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_2:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_white_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 112
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_2:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 113
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_bai:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_3:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_white_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 117
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_3:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 118
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_bai:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_4:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_4:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_white_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 122
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_4:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 123
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_4:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_bai:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_5:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_5:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_white_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 127
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_5:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_bai:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 129
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_1:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_blue_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 131
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_1:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 132
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_2:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_blue_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 136
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_2:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 137
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_3:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_white_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 141
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_3:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 142
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_bai:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_4:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_4:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_white_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 146
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_4:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 147
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_4:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_bai:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_5:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_5:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_white_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 151
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_5:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_bai:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 153
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_1:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_blue_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 155
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_1:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 156
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_2:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_blue_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 160
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_2:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 161
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_3:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_blue_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 165
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_3:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 166
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_4:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_4:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_white_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 170
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_4:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 171
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_4:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_bai:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_5:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_5:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_white_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 175
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_5:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_bai:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 177
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_1:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_blue_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 179
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_1:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 180
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_2:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_blue_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 184
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_2:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 185
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_3:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_blue_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 189
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_3:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 190
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_4:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_4:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_blue_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 194
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_4:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 195
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_4:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_5:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_5:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_white_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 199
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_5:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_bai:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_4
    if-ne p1, v1, :cond_5

    .line 201
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_1:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_blue_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 203
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_1:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 204
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_2:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_blue_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 208
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_2:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 209
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_3:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_blue_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 213
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_3:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 214
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_4:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_4:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_blue_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 218
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->img_line_4:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 219
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_4:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_5:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_index_5:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_guide_header_num_blue_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 223
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->tv_name_5:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/view/VoiceprintGuideHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_0076ff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    :goto_0
    return-void
.end method
