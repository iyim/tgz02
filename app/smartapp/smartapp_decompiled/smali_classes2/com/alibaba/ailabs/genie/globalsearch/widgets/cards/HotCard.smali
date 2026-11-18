.class public Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;
.super Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;
.source "HotCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;
    }
.end annotation

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
.field private deleteView:Landroid/view/View;

.field private groupIcon:Landroid/widget/ImageView;

.field private hasExposed:Z

.field private rank:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->rank:I

    .line 36
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->hasExposed:Z

    return-void
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

    .line 252
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->buildExposeData(Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;ZI)Ljava/util/HashMap;

    move-result-object p1

    .line 253
    sget-object p2, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->traceId:Ljava/lang/String;

    const-string v0, "trace_id"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->hotListPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->getPageSpm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->rank:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "spm-cnt"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method buildItemBuilder()Ljava/util/function/Function;
    .locals 2
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

    .line 138
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$3;->$SwitchMap$com$alibaba$ailabs$genie$globalsearch$data$GroupType:[I

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->groupType:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 200
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$HotCard$BZOZR3HqEG1lgsSVEdP8HmsVfS0;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$HotCard$BZOZR3HqEG1lgsSVEdP8HmsVfS0;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;)V

    goto :goto_0

    .line 189
    :cond_1
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$HotCard$lQlwrWK-rYJMl2EOkUqXJCCw6Sg;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$HotCard$lQlwrWK-rYJMl2EOkUqXJCCw6Sg;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;)V

    goto :goto_0

    .line 166
    :cond_2
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$HotCard$INCsgKttpxaUyMbvk_5pScwd6GA;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$HotCard$INCsgKttpxaUyMbvk_5pScwd6GA;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;)V

    goto :goto_0

    .line 140
    :cond_3
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$HotCard$5kSyIDvhi9vdV5HvMU8653AG_a8;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$HotCard$5kSyIDvhi9vdV5HvMU8653AG_a8;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;)V

    :goto_0
    return-object v0
.end method

.method commonHandler(Landroid/view/View;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;)V
    .locals 2

    .line 214
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->title:I

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->setString(Landroid/view/View;ILjava/lang/String;)V

    .line 215
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->img_post:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 216
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getImg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getImg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->displayCircleImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public exposedCard(I)V
    .locals 4

    .line 236
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->hasExposed:Z

    if-nez p1, :cond_1

    invoke-virtual {p0, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->isViewExposed(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 237
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->flowLayout:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getChildCountVisible()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ge v0, p1, :cond_0

    .line 239
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->mDataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    .line 240
    sget-object v3, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->hotListPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    invoke-virtual {p0, v2, v1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->buildExposeData(Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;ZI)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->exposeUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/util/Map;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->hasExposed:Z

    :cond_1
    return-void
.end method

.method getGroupInfo(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;)Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;
    .locals 11

    .line 52
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$3;->$SwitchMap$com$alibaba$ailabs$genie$globalsearch$data$GroupType:[I

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v8, 0x5

    const/4 v9, 0x1

    if-eq v0, v9, :cond_4

    const/4 v1, 0x2

    const/4 v9, 0x3

    if-eq v0, v1, :cond_3

    if-eq v0, v9, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    if-eq v0, v8, :cond_0

    const/4 v0, 0x0

    move-object v8, v0

    goto/16 :goto_0

    .line 82
    :cond_0
    iput v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->maxChildrenCount:I

    .line 83
    new-instance v8, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;

    sget v3, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_hot_search_bg:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x120

    const/16 v7, 0x19

    const-string v2, "\u70ed\u95e8\u641c\u7d22"

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;Ljava/lang/String;IIZII)V

    goto/16 :goto_0

    .line 78
    :cond_1
    iput v9, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->maxChildrenCount:I

    .line 79
    new-instance v8, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;

    sget v3, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_hot_music_bg:I

    sget v4, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_hot_app_tag:I

    const/4 v5, 0x0

    const/16 v6, 0x163

    const/16 v7, 0x1f

    const-string v2, "\u5e94\u7528\u70ed\u699c"

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;Ljava/lang/String;IIZII)V

    goto :goto_0

    .line 74
    :cond_2
    iput v9, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->maxChildrenCount:I

    .line 75
    new-instance v8, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;

    sget v3, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_hot_video_bg:I

    sget v4, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_hot_video_tag:I

    const/4 v5, 0x0

    const/16 v6, 0x19c

    const/16 v7, 0x1f

    const-string v2, "\u89c6\u9891\u70ed\u699c"

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;Ljava/lang/String;IIZII)V

    goto :goto_0

    .line 70
    :cond_3
    new-instance v8, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;

    sget v3, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_hot_music_bg:I

    sget v4, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_hot_music_tag:I

    const/4 v5, 0x0

    const/16 v6, 0x163

    const/16 v7, 0x1f

    const-string v2, "\u97f3\u4e50\u70ed\u699c"

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;Ljava/lang/String;IIZII)V

    .line 71
    iput v9, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->maxChildrenCount:I

    goto :goto_0

    .line 54
    :cond_4
    new-instance v10, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;

    sget v3, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_history_bg:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/16 v6, 0x119

    const/16 v7, 0x10

    const-string v2, "\u641c\u7d22\u5386\u53f2"

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;Ljava/lang/String;IIZII)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->flowLayout:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->setPadding(IIII)V

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->deleteView:Landroid/view/View;

    new-instance v1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$HotCard$ES8LCHKyR11WIvUdnoEy6OwlOJQ;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$HotCard$ES8LCHKyR11WIvUdnoEy6OwlOJQ;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iput v8, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->maxChildrenCount:I

    .line 67
    iput-boolean v9, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->hasExposed:Z

    move-object v8, v10

    :goto_0
    return-object v8
.end method

.method public getLayoutId()I
    .locals 1

    .line 223
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$layout;->gs_card_hot_list:I

    return v0
.end method

.method protected initView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->initView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    .line 45
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->delete_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->deleteView:Landroid/view/View;

    .line 46
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->group_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->groupIcon:Landroid/widget/ImageView;

    return-object p1
.end method

.method public synthetic lambda$buildItemBuilder$3$HotCard(Ljava/lang/Integer;)Landroid/view/View;
    .locals 4

    .line 141
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$layout;->gs_item_history_search:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->inflateView(I)Landroid/view/View;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataList.get(pos) instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->mDataList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->d(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->mDataList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    .line 144
    sget v1, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->delete:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$HotCard$sO4QH-A8gMInAQqVPHO9xG3_pb0;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$HotCard$sO4QH-A8gMInAQqVPHO9xG3_pb0;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    sget v1, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->title:I

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->setString(Landroid/view/View;ILjava/lang/String;)V

    return-object v0
.end method

.method public synthetic lambda$buildItemBuilder$4$HotCard(Ljava/lang/Integer;)Landroid/view/View;
    .locals 6

    .line 167
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->mDataList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    .line 168
    sget v1, Lcom/alibaba/ailabs/genie/globalsearch/R$layout;->gs_item_audio_hot:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->inflateView(I)Landroid/view/View;

    move-result-object v1

    .line 169
    sget v2, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->number:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_0

    const-string p1, "#7292B1"

    .line 172
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    const-string p1, "#CC5C1D"

    .line 174
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->groupType:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    sget-object v2, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->topMusic:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    if-ne p1, v2, :cond_2

    .line 177
    sget p1, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->sub_title:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 178
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getAuthorNames()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 180
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getAuthorNames()Ljava/util/List;

    move-result-object v2

    const-string v3, "|"

    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->commonHandler(Landroid/view/View;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;)V

    return-object v1
.end method

.method public synthetic lambda$buildItemBuilder$5$HotCard(Ljava/lang/Integer;)Landroid/view/View;
    .locals 3

    .line 190
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$layout;->gs_item_video_hot:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->inflateView(I)Landroid/view/View;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->mDataList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    .line 192
    sget v1, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->sub_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 193
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->commonHandler(Landroid/view/View;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;)V

    return-object v0
.end method

.method public synthetic lambda$buildItemBuilder$6$HotCard(Ljava/lang/Integer;)Landroid/view/View;
    .locals 2

    .line 201
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$layout;->gs_item_related_search:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->inflateView(I)Landroid/view/View;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->mDataList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    .line 203
    sget v1, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->title:I

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->setString(Landroid/view/View;ILjava/lang/String;)V

    return-object v0
.end method

.method public synthetic lambda$getGroupInfo$1$HotCard(Landroid/view/View;)V
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 58
    new-instance p1, Lcom/alibaba/ailabs/genie/globalsearch/request/DeleteHistoryRequest;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/request/DeleteHistoryRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/request/DeleteHistoryRequest;->request(Landroid/content/Context;)V

    .line 59
    new-instance p1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$1;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public synthetic lambda$null$2$HotCard(Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;Landroid/view/View;)V
    .locals 1

    .line 145
    new-instance p2, Lcom/alibaba/ailabs/genie/globalsearch/request/DeleteHistoryRequest;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/alibaba/ailabs/genie/globalsearch/request/DeleteHistoryRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/globalsearch/request/DeleteHistoryRequest;->request(Landroid/content/Context;)V

    .line 146
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->mDataList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 147
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->mDataList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->setDataList(Ljava/util/List;)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 151
    new-instance p1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$2;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$2;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method

.method onItemClicked(I)V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hot groupType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->groupType:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->d(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->groupType:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->jumpToTarget(Landroid/content/Context;Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;)V

    .line 231
    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->hotListPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->buildExposeData(Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;ZI)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->clickUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/util/Map;)V

    return-void
.end method

.method public resetExposedFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->hasExposed:Z

    return-void
.end method

.method public setGroupInfo(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;)Z
    .locals 5

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGroupInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->d(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->getGroupInfo(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;)Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 114
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;->groupName:Ljava/lang/String;

    invoke-super {p0, p1, v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->setGroupInfo(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;Ljava/lang/String;)V

    .line 115
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;->groupWidth:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x43da0000    # 436.0f

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {p1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 118
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget p1, v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;->bgImg:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->setBackgroundResource(I)V

    .line 120
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->flowLayout:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    iget v2, v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;->verticalGap:I

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->setVerticalGap(I)V

    .line 121
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->deleteView:Landroid/view/View;

    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;->hasDeleteAll:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget p1, v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;->groupIcon:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 123
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->groupIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->groupIcon:Landroid/widget/ImageView;

    iget v0, v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;->groupIcon:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->groupType:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setRank(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->rank:I

    return-void
.end method
