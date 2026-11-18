.class public Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;
.super Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;
.source "SearchResultCard.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard<",
        "Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;",
        ">;"
    }
.end annotation


# static fields
.field public static traceId:Ljava/lang/String;


# instance fields
.field private groupBean:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

.field private hasMoreView:Landroid/widget/TextView;

.field private isShowAll:Z

.field lifecycleObserver:Landroid/arch/lifecycle/GenericLifecycleObserver;

.field mRunnable:Ljava/lang/Runnable;

.field scrollDiffLen:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 191
    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->scrollDiffLen:I

    const/4 p1, 0x0

    .line 308
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->lifecycleObserver:Landroid/arch/lifecycle/GenericLifecycleObserver;

    .line 309
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic lambda$setGroupInfo$7(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;Landroid/view/View;)V
    .locals 2

    .line 90
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->searchByGroupBean(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;)V

    .line 91
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getPageState()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;-><init>()V

    const-string v1, "card_more"

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->withClickType(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getGroupType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->withGroupType(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->build()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->clickUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method buildApp()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 300
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$Iu8l_mudA257iAJngP44pdnV1oc;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$Iu8l_mudA257iAJngP44pdnV1oc;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;)V

    return-object v0
.end method

.method buildAudioAlbum()Ljava/util/function/Function;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 471
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$H9oVb1SjOfso-L4X9hggyRvMj8s;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$H9oVb1SjOfso-L4X9hggyRvMj8s;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;)V

    return-object v0
.end method

.method buildAudioContent()Ljava/util/function/Function;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 427
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$L_PBIfrqwTfLKr6-MZxSTNIKEE8;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$L_PBIfrqwTfLKr6-MZxSTNIKEE8;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;)V

    return-object v0
.end method

.method buildBaike()Ljava/util/function/Function;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 312
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$WaAZGFUUG8NhyyaY_HpeZMcccGQ;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$WaAZGFUUG8NhyyaY_HpeZMcccGQ;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;)V

    return-object v0
.end method

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

    .line 515
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->buildExposeData(Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;ZI)Ljava/util/HashMap;

    move-result-object p1

    .line 516
    sget-object p2, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->traceId:Ljava/lang/String;

    const-string v0, "trace_id"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->groupBean:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getExtend()Ljava/lang/String;

    move-result-object p2

    const-string v0, "card_extend"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getTabName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "tab_name"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getPageState()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->getPageSpm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->groupBean:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getRank()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "spm-cnt"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method buildItemBuilder()Ljava/util/function/Function;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard$2;->$SwitchMap$com$alibaba$ailabs$genie$globalsearch$data$GroupType:[I

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->groupType:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x5

    const/4 v3, 0x6

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_1

    .line 150
    :pswitch_0
    iput v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->maxChildrenCount:I

    .line 151
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->flowLayout:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42080000    # 34.0f

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->setPadding(IIII)V

    .line 152
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->flowLayout:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    sget v1, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_item_bg_shape:I

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->setBackgroundResource(I)V

    .line 153
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$UINU1uDeV1O0YnJ_tV2wG7za84A;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$UINU1uDeV1O0YnJ_tV2wG7za84A;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;)V

    goto :goto_1

    .line 143
    :pswitch_1
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->isShowAll:Z

    if-eqz v0, :cond_0

    .line 144
    iput v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->maxChildrenCount:I

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->buildAudioAlbum()Ljava/util/function/Function;

    move-result-object v0

    goto :goto_1

    .line 133
    :pswitch_2
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->isShowAll:Z

    if-eqz v0, :cond_1

    .line 134
    iput v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->maxChildrenCount:I

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->flowLayout:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->setVerticalGap(I)V

    .line 137
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->buildAudioContent()Ljava/util/function/Function;

    move-result-object v0

    goto :goto_1

    .line 126
    :pswitch_3
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->isShowAll:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x14

    .line 127
    iput v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->maxChildrenCount:I

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->buildBaike()Ljava/util/function/Function;

    move-result-object v0

    goto :goto_1

    .line 118
    :pswitch_4
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->isShowAll:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x9

    .line 119
    iput v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->maxChildrenCount:I

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->flowLayout:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->setVerticalGap(I)V

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->buildApp()Ljava/util/function/Function;

    move-result-object v0

    goto :goto_1

    .line 107
    :pswitch_5
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->isShowAll:Z

    if-eqz v0, :cond_5

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->groupBean:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->groupType:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->longVideo:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    if-ne v0, v1, :cond_4

    .line 109
    iput v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->maxChildrenCount:I

    goto :goto_0

    .line 111
    :cond_4
    iput v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->maxChildrenCount:I

    .line 114
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->buildVideo()Ljava/util/function/Function;

    move-result-object v0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method buildVideo()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 262
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$AsJGhl1XHIcfj2O9LUgjS3Q_I0Q;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$AsJGhl1XHIcfj2O9LUgjS3Q_I0Q;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;)V

    return-object v0
.end method

.method commonHandler(Landroid/view/View;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;ZZI)V
    .locals 2

    .line 171
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->title:I

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->setString(Landroid/view/View;ILjava/lang/String;)V

    .line 172
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->img_post:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 173
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getImg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p4, :cond_0

    .line 175
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;

    move-result-object p4

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getImg()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, v0, p5}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->displayTopCircleImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p4, -0x1

    if-eq p5, p4, :cond_1

    .line 178
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;

    move-result-object p4

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1, p5}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->displayCircleImageWithDp(Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto :goto_0

    .line 180
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;

    move-result-object p4

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getImg()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, v0, p5}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->displayCircleImageNoCache(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 184
    :cond_2
    :goto_0
    iget-object p4, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->groupBean:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    invoke-virtual {p4}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getAutoPlay()Z

    move-result p4

    if-eqz p4, :cond_3

    if-eqz p3, :cond_3

    .line 185
    new-instance p3, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;-><init>(Landroid/content/Context;)V

    .line 186
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 187
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->groupBean:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->setGroupType(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;)V

    :cond_3
    return-void
.end method

.method public exposedCard(I)V
    .locals 7

    .line 205
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->groupBean:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->hasExposed()Z

    move-result p1

    if-nez p1, :cond_3

    .line 207
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->flowLayout:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getChildCountVisible()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-ge v2, p1, :cond_2

    .line 209
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->flowLayout:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    invoke-virtual {v4, v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 210
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->mDataList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    .line 211
    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->hasExposed()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 213
    :cond_0
    invoke-virtual {p0, v4}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->isViewExposed(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getPageState()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    move-result-object v4

    invoke-virtual {p0, v5, v1, v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->buildExposeData(Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;ZI)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->exposeUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/util/Map;)V

    .line 215
    invoke-virtual {v5, v1}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->setHasExposed(Z)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->groupBean:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->setHasExposed(Z)V

    :cond_3
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 74
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$layout;->gs_card_search_res:I

    return v0
.end method

.method protected initView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 64
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->initView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 65
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43f10000    # 482.0f

    invoke-static {p1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x42200000    # 40.0f

    .line 66
    invoke-static {p1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    sget p1, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->has_more:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->hasMoreView:Landroid/widget/TextView;

    return-object v0
.end method

.method public synthetic lambda$buildApp$10$SearchResultCard(Ljava/lang/Integer;)Landroid/view/View;
    .locals 7

    .line 301
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$layout;->gs_item_app:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->inflateView(I)Landroid/view/View;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->mDataList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v1, p0

    move-object v2, v0

    .line 303
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->commonHandler(Landroid/view/View;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;ZZI)V

    return-object v0
.end method

.method public synthetic lambda$buildAudioAlbum$15$SearchResultCard(Ljava/lang/Integer;)Landroid/view/View;
    .locals 7

    .line 472
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$layout;->gs_item_audio_normal:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->inflateView(I)Landroid/view/View;

    move-result-object v0

    .line 473
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->mDataList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    .line 474
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getAuthorNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 475
    sget v1, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->sub_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getAuthorNames()Ljava/util/List;

    move-result-object v2

    const-string v4, "|"

    invoke-static {v4, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    :cond_0
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getExtra()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 479
    sget v4, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->vip_img:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const-string v5, "isVip"

    .line 480
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-ne v5, v2, :cond_1

    .line 481
    sget v5, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_item_vip:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const-string v5, "charge"

    .line 482
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-ne v5, v2, :cond_2

    .line 483
    sget v5, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_item_charge:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    const-string v4, "sourceLogo"

    .line 485
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 486
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;

    move-result-object v5

    sget v6, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->source_img:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->displayCircleImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 489
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->commonHandler(Landroid/view/View;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;ZZI)V

    return-object v0
.end method

.method public synthetic lambda$buildAudioContent$14$SearchResultCard(Ljava/lang/Integer;)Landroid/view/View;
    .locals 11

    .line 428
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$layout;->gs_item_audio_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->inflateView(I)Landroid/view/View;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->mDataList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    .line 430
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getAuthorNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 431
    sget v1, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->sub_title:I

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getAuthorNames()Ljava/util/List;

    move-result-object v2

    const-string v4, "|"

    invoke-static {v4, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->setString(Landroid/view/View;ILjava/lang/String;)V

    .line 433
    :cond_0
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getExtra()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    const-string v5, "duration"

    .line 437
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, ""

    if-eqz v6, :cond_1

    .line 438
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getExtra()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->transSecondsToTime(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v7

    :goto_0
    const-string v6, "releaseTime"

    .line 440
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 441
    new-instance v8, Ljava/util/Date;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getExtra()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 442
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string v10, "yyyy-MM-dd"

    invoke-direct {v6, v10, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 443
    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v7

    .line 445
    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, " "

    if-nez v8, :cond_3

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 446
    sget v7, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->duration:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " | "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v7, v5}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->setString(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_2

    .line 448
    :cond_3
    sget v7, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->duration:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v7, v5}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->setString(Landroid/view/View;ILjava/lang/String;)V

    .line 450
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_icon_time:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 451
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v6, v7}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 452
    sget v6, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->duration:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 454
    sget v5, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->vip_img:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const-string v6, "isVip"

    .line 455
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v2, :cond_4

    .line 456
    sget v6, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_item_vip:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_4
    const-string v6, "charge"

    .line 457
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v2, :cond_5

    .line 458
    sget v6, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_item_charge:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    :goto_3
    const-string v5, "sourceLogo"

    .line 460
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 461
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;

    move-result-object v6

    sget v7, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->source_img:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->displayCircleImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 464
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_7

    const/4 v4, 0x1

    :cond_7
    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->commonHandler(Landroid/view/View;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;ZZI)V

    return-object v0
.end method

.method public synthetic lambda$buildBaike$13$SearchResultCard(Ljava/lang/Integer;)Landroid/view/View;
    .locals 15

    move-object v6, p0

    .line 313
    iget-object v0, v6, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->mDataList:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    .line 314
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getExtra()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 316
    sget v3, Lcom/alibaba/ailabs/genie/globalsearch/R$layout;->gs_item_baike:I

    invoke-virtual {p0, v3}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->inflateView(I)Landroid/view/View;

    move-result-object v7

    .line 317
    sget v3, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->content:I

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 318
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    sget v4, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->img_post:I

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 320
    sget v5, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->title:I

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 321
    sget v8, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->sub_title:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 322
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_icon_more:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 323
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v10

    const/high16 v11, 0x41a00000    # 20.0f

    invoke-static {v10, v11}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v11}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v12, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 324
    sget v10, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->baike_icon:I

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v1, v1, v9, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const-string v1, "baikeCardType"

    .line 327
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/4 v10, -0x1

    const/4 v11, 0x1

    if-eqz v9, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v9, "long"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 331
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getUrl()Ljava/lang/String;

    move-result-object v9

    const-string v13, "hasExposed"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, v6, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->mRunnable:Ljava/lang/Runnable;

    if-nez v9, :cond_0

    .line 332
    invoke-virtual {v2, v11}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->setHasExposed(Z)V

    .line 333
    iput-object v13, v2, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->url:Ljava/lang/String;

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v10, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 335
    new-instance v9, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$0B1fiOcECURiVkAbpKM55zvjEZI;

    move-object/from16 v13, p1

    invoke-direct {v9, p0, v7, v2, v13}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$0B1fiOcECURiVkAbpKM55zvjEZI;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;Landroid/view/View;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;Ljava/lang/Integer;)V

    .line 343
    new-instance v14, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard$1;

    invoke-direct {v14, p0, v7, v9, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard$1;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;Landroid/view/View;Ljava/util/function/Function;Landroid/os/Handler;)V

    iput-object v14, v6, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->mRunnable:Ljava/lang/Runnable;

    .line 360
    iget-object v14, v6, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v11, 0x7d0

    invoke-virtual {v1, v14, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 361
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v11

    instance-of v11, v11, Landroid/support/v4/app/FragmentActivity;

    if-eqz v11, :cond_1

    const-string v11, " longBaike register lifecycleObserver"

    .line 362
    invoke-static {v11}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->ut(Ljava/lang/String;)V

    .line 363
    new-instance v11, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$_RvOlCevv5ooebg2By2rXxTtqvU;

    invoke-direct {v11, p0, v1, v9}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$_RvOlCevv5ooebg2By2rXxTtqvU;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;Landroid/os/Handler;Ljava/util/function/Function;)V

    iput-object v11, v6, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->lifecycleObserver:Landroid/arch/lifecycle/GenericLifecycleObserver;

    .line 374
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v9, v6, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->lifecycleObserver:Landroid/arch/lifecycle/GenericLifecycleObserver;

    invoke-virtual {v1, v9}, Landroid/arch/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    goto :goto_0

    :cond_0
    move-object/from16 v13, p1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v13, p1

    const/4 v1, 0x0

    :goto_1
    const-string v9, "subTitle"

    .line 379
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/16 v12, 0x8

    if-eqz v11, :cond_3

    .line 380
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 382
    :cond_3
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    :goto_2
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getImg()Ljava/lang/String;

    move-result-object v0

    const/high16 v9, 0x43cb0000    # 406.0f

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getImg()Ljava/lang/String;

    move-result-object v0

    const-string v11, ""

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_3

    :cond_4
    if-eqz v1, :cond_5

    .line 392
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 393
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setWidth(I)V

    const/4 v10, 0x0

    goto/16 :goto_4

    .line 395
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 396
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 397
    iput v10, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 398
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v4, 0x43630000    # 227.0f

    invoke-static {v1, v4}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v10, 0x0

    .line 399
    iput v10, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 400
    iput v10, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 401
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 403
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v4, 0x43690000    # 233.0f

    invoke-static {v1, v4}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 404
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v5, v0, v10, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 405
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 406
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v4, 0x42a80000    # 84.0f

    invoke-static {v1, v4}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 407
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 408
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v1, v4}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 409
    invoke-virtual {v3}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v0

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v3, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/4 v0, 0x3

    .line 410
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLines(I)V

    const-string v0, "#7383a2"

    .line 411
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 412
    invoke-virtual {v7}, Landroid/view/View;->requestLayout()V

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v10, 0x0

    .line 385
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_baike_nopics_bg:I

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 386
    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v1, :cond_7

    .line 388
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 415
    :cond_7
    :goto_4
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_8

    const/high16 v0, 0x41f00000    # 30.0f

    .line 416
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 418
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_9

    const/4 v3, 0x1

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    :goto_5
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->commonHandler(Landroid/view/View;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;ZZI)V

    return-object v7

    :cond_a
    return-object v1
.end method

.method public synthetic lambda$buildItemBuilder$8$SearchResultCard(Ljava/lang/Integer;)Landroid/view/View;
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->mDataList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    .line 155
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$layout;->gs_item_related_search:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->inflateView(I)Landroid/view/View;

    move-result-object v0

    .line 159
    sget v1, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->title:I

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->setString(Landroid/view/View;ILjava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$buildVideo$9$SearchResultCard(Ljava/lang/Integer;)Landroid/view/View;
    .locals 10

    .line 264
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->mDataList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    .line 265
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->groupBean:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->groupType:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->longVideo:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    if-ne v0, v1, :cond_0

    .line 266
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$layout;->gs_item_video_first:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->inflateView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 268
    :cond_0
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$layout;->gs_item_video_normal:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->inflateView(I)Landroid/view/View;

    move-result-object v0

    .line 270
    :goto_0
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getExtra()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 272
    sget v4, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->score:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 273
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->groupType:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    sget-object v6, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->longVideo:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    if-ne v5, v6, :cond_1

    const-string v5, "score"

    .line 274
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 275
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    sget v5, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_text_bg_video_score:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    const-string v5, "duration"

    .line 278
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 279
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getExtra()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->transSecondsToTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0xa

    .line 280
    invoke-virtual {v4, v5, v2, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 281
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 282
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x41a80000    # 21.0f

    invoke-static {v6, v7}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 283
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v6, v7}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 284
    sget v5, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_text_bg_video_duration:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_2
    :goto_1
    const-string v4, "floatImg"

    .line 286
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 287
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;

    move-result-object v5

    sget v6, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->vip_img:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v7, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;

    .line 288
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v8, v9}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    sget-object v9, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;->TOP_RIGHT:Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;

    invoke-direct {v7, v8, v2, v9}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;-><init>(FILcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;)V

    .line 287
    invoke-virtual {v5, v6, v4, v7}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->displayImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;)V

    :cond_3
    const-string v4, "clipImg"

    .line 290
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 291
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;

    move-result-object v5

    sget v6, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->source_img:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->displayImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 294
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->commonHandler(Landroid/view/View;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;ZZI)V

    return-object v0
.end method

.method public synthetic lambda$null$11$SearchResultCard(Landroid/view/View;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 p4, -0x1

    invoke-virtual {p1, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    .line 337
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " longBaike gone duration: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->ut(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->buildExposeData(Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;ZI)Ljava/util/HashMap;

    move-result-object p1

    .line 339
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "exp_duration"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getPageState()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->exposeUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/util/Map;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$null$12$SearchResultCard(Landroid/os/Handler;Ljava/util/function/Function;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 364
    sget-object p3, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    if-ne p4, p3, :cond_1

    .line 365
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->mRunnable:Ljava/lang/Runnable;

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 366
    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 367
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->mRunnable:Ljava/lang/Runnable;

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->lifecycleObserver:Landroid/arch/lifecycle/GenericLifecycleObserver;

    invoke-virtual {p1, p3}, Landroid/arch/lifecycle/Lifecycle;->removeObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 370
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->lifecycleObserver:Landroid/arch/lifecycle/GenericLifecycleObserver;

    const/4 p1, 0x1

    .line 371
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method onItemClicked(I)V
    .locals 5

    .line 226
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    .line 227
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->groupType:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    sget-object v2, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->baike:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->groupBean:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    .line 228
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getAutoPlay()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 229
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v3}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->playLongTTS(Landroid/content/Context;Ljava/lang/String;I)V

    .line 231
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getPageState()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    move-result-object v1

    invoke-virtual {p0, v0, v3, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->buildExposeData(Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;ZI)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->clickUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/util/Map;)V

    .line 232
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->groupType:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    invoke-virtual {p1, v1, v2, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->jumpToTarget(Landroid/content/Context;Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;)V

    return-void
.end method

.method public onScrollToXPos(I)V
    .locals 3

    .line 193
    iget v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->scrollDiffLen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->hasMoreView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x1a

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->scrollDiffLen:I

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getLeft()I

    move-result v0

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getRight()I

    move-result v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->scrollDiffLen:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->titleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getLeft()I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getLeft()I

    move-result v0

    if-gt p1, v0, :cond_2

    .line 199
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->titleView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;",
            ">;)V"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->groupType:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->relatedSearch:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    if-ne v0, v1, :cond_2

    .line 497
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 499
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 500
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 501
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v1, :cond_1

    .line 502
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 503
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 504
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p1, v3

    .line 510
    :cond_2
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->setDataList(Ljava/util/List;)V

    return-void
.end method

.method public setGroupInfo(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;Z)Z
    .locals 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGroupInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isShowAll: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->d(Ljava/lang/String;)V

    .line 79
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->isShowAll:Z

    .line 80
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->groupBean:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    .line 81
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getGroupTypeEnum()Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->groupType:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->groupType:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getGroupTypeEnum()Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v0, v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->setGroupInfo(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->maxChildrenCount:I

    if-le v0, v2, :cond_1

    if-eqz p2, :cond_1

    sget-object p2, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->relatedSearch:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    .line 87
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getGroupTypeEnum()Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    move-result-object v0

    if-eq p2, v0, :cond_1

    .line 88
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->hasMoreView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->hasMoreView:Landroid/widget/TextView;

    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$1niUY3m4gYbXDHt8ob6g6X0kfxg;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$1niUY3m4gYbXDHt8ob6g6X0kfxg;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_icon_more:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p2, v0}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 95
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->hasMoreView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p1, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->groupType:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method transSecondsToTime(I)Ljava/lang/String;
    .locals 7

    .line 237
    div-int/lit16 v0, p1, 0xe10

    const-string v1, ":"

    const/4 v2, 0x0

    const/16 v3, 0xa

    const-string v4, ""

    if-lez v0, :cond_1

    if-ge v0, v3, :cond_0

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 242
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    const/16 v0, 0x3c

    if-le p1, v0, :cond_3

    .line 245
    rem-int/lit16 v5, p1, 0xe10

    div-int/2addr v5, v0

    if-ge v5, v3, :cond_2

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 249
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 251
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "00:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    :goto_0
    rem-int/2addr p1, v0

    if-ge p1, v3, :cond_4

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
