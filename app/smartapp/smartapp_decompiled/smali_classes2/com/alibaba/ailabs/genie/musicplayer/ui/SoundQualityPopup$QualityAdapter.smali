.class Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualityAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SoundQualityPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QualityAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private qualitySelect:Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualitySelect;

.field private soundQualityBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;Landroid/content/Context;Ljava/util/List;Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualitySelect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;",
            ">;",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualitySelect;",
            ")V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualityAdapter;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualityAdapter;->context:Landroid/content/Context;

    .line 83
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualityAdapter;->soundQualityBeans:Ljava/util/List;

    .line 84
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualityAdapter;->qualitySelect:Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualitySelect;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualityAdapter;->soundQualityBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$58$SoundQualityPopup$QualityAdapter(ILandroid/view/View;)V
    .locals 1

    .line 114
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualityAdapter;->qualitySelect:Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualitySelect;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualityAdapter;->soundQualityBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;

    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualitySelect;->select(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualityAdapter;->onBindViewHolder(Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;I)V
    .locals 5
    .param p1    # Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 96
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;->qualityName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualityAdapter;->soundQualityBeans:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;->getQualityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualityAdapter;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualityAdapter;->soundQualityBeans:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;->getQualityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;->qualityName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualityAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$color;->color_00b3ff:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;->qualityName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;->qualityName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualityAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$color;->color_2b3852:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;->qualityName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualityAdapter;->soundQualityBeans:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;->isVip()Z

    move-result v0

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;->vipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 107
    :cond_1
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;->vipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    :goto_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualityAdapter;->soundQualityBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_2

    .line 110
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;->line:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 112
    :cond_2
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;->line:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :goto_2
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;->layout:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/-$$Lambda$SoundQualityPopup$QualityAdapter$W64OmWTqH1cYWp9sMHpqq9czfSY;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/-$$Lambda$SoundQualityPopup$QualityAdapter$W64OmWTqH1cYWp9sMHpqq9czfSY;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualityAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualityAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 90
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualityAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->item_sound_quality:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 91
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;-><init>(Landroid/view/View;Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$1;)V

    return-object p2
.end method
