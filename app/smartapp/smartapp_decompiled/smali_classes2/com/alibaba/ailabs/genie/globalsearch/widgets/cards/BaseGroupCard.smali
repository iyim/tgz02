.class public abstract Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;
.super Landroid/widget/LinearLayout;
.source "BaseGroupCard.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/LinearLayout;"
    }
.end annotation


# static fields
.field private static mGlobalVisibleRect:Landroid/graphics/Rect;


# instance fields
.field protected flowLayout:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

.field protected groupType:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

.field protected itemBuilder:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected maxChildrenCount:I

.field protected titleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->mGlobalVisibleRect:Landroid/graphics/Rect;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    .line 35
    iput v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->maxChildrenCount:I

    .line 39
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->initView(Landroid/content/Context;)Landroid/view/View;

    return-void
.end method

.method private viewSize(Landroid/view/View;)D
    .locals 5

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 115
    sget-object v2, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    mul-int v0, v0, v1

    if-eqz p1, :cond_0

    if-lez v0, :cond_0

    .line 118
    sget-object p1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 119
    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int p1, p1, v1

    int-to-double v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 120
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    return-wide v1

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method buildExposeData(Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;ZI)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;",
            "ZI)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 128
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->groupType:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "card_type"

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "item"

    if-eqz p2, :cond_0

    const-string p2, "exp_type"

    .line 130
    invoke-virtual {p3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p2, "click_type"

    .line 132
    invoke-virtual {p3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getScm()Ljava/lang/String;

    move-result-object p2

    const-string v0, "scm"

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getExtend()Ljava/lang/String;

    move-result-object p1

    const-string p2, "item_extend"

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3
.end method

.method abstract buildItemBuilder()Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract exposedCard(I)V
.end method

.method abstract getLayoutId()I
.end method

.method protected inflateView(I)Landroid/view/View;
    .locals 3

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->flowLayout:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 84
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected initView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->getLayoutId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->setOrientation(I)V

    .line 56
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->group_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->titleView:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->flow_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->flowLayout:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    return-object p1
.end method

.method public isViewExposed(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->viewSize(Landroid/view/View;)D

    move-result-wide v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v1, v3

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public synthetic lambda$setDataList$0$BaseGroupCard(Landroid/view/View;I)V
    .locals 0

    .line 78
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->onItemClicked(I)V

    return-void
.end method

.method abstract onItemClicked(I)V
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->mDataList:Ljava/util/List;

    .line 72
    iget p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->maxChildrenCount:I

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->flowLayout:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->removeAllViews()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->itemBuilder:Ljava/util/function/Function;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->flowLayout:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$BaseGroupCard$Kv7Fvu6tVimxX_Qu74No2jXMfZo;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$BaseGroupCard$Kv7Fvu6tVimxX_Qu74No2jXMfZo;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->setOnItemClickListener(Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout$FlowLayoutClickListener;)V

    return-void
.end method

.method protected setGroupInfo(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->groupType:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    if-eqz p2, :cond_0

    .line 64
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->buildItemBuilder()Ljava/util/function/Function;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->itemBuilder:Ljava/util/function/Function;

    return-void
.end method

.method protected setString(Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
