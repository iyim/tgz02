.class public Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;
.super Landroid/widget/PopupWindow;
.source "SoundQualityPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$ViewHolder;,
        Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualityAdapter;,
        Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualitySelect;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mPopWindow:Landroid/widget/PopupWindow;

.field private qualitySelect:Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualitySelect;

.field private select:Ljava/lang/String;

.field private soundList:Landroid/support/v7/widget/RecyclerView;

.field private soundQualityBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualitySelect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;",
            ">;",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualitySelect;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->select:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->soundQualityBeans:Ljava/util/List;

    .line 38
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->qualitySelect:Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualitySelect;

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->select:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public hidePopup()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showPopup$56$SoundQualityPopup(Landroid/view/View;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showPopup$57$SoundQualityPopup(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->select:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;->getQualityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->qualitySelect:Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualitySelect;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualitySelect;->select(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;)V

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public showPopup(Landroid/view/View;)V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->popup_sound_quality:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 44
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->mPopWindow:Landroid/widget/PopupWindow;

    .line 45
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 46
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->list_ry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->soundList:Landroid/support/v7/widget/RecyclerView;

    .line 47
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->popup_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 48
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/ui/-$$Lambda$SoundQualityPopup$0h6c_BchiH8q3qr634s3F1VJHp0;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/-$$Lambda$SoundQualityPopup$0h6c_BchiH8q3qr634s3F1VJHp0;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->soundList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 53
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 57
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->soundList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 58
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualityAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->soundQualityBeans:Ljava/util/List;

    new-instance v3, Lcom/alibaba/ailabs/genie/musicplayer/ui/-$$Lambda$SoundQualityPopup$kBOGbOTMT5WHjCchqwXMCHYH6rg;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/-$$Lambda$SoundQualityPopup$kBOGbOTMT5WHjCchqwXMCHYH6rg;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualityAdapter;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;Landroid/content/Context;Ljava/util/List;Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualitySelect;)V

    .line 64
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->soundList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->mPopWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    const/16 v2, 0x50

    invoke-virtual {v0, p1, v2, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
