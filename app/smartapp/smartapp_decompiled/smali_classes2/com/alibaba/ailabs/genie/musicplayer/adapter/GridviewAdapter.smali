.class public Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GridviewAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurPageNum:I

.field private mCurPos:I

.field private mItemType:Ljava/lang/String;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;",
            ">;"
        }
    .end annotation
.end field

.field private mPos:I

.field private mReverse:Z

.field private mTotal:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;",
            ">;)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mList:Ljava/util/List;

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mCurPageNum:I

    .line 28
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mCurPos:I

    .line 31
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mPos:I

    .line 119
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mList:Ljava/util/List;

    return-void
.end method

.method private createOrderList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mTotal:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mTotal:I

    div-int/lit8 v2, v1, 0x1e

    .line 85
    rem-int/lit8 v1, v1, 0x1e

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 87
    new-instance v4, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;

    mul-int/lit8 v5, v3, 0x1e

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v5, v5, 0x1e

    invoke-direct {v4, v6, v5}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;-><init>(II)V

    .line 88
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 92
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;

    mul-int/lit8 v2, v2, 0x1e

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mTotal:I

    invoke-direct {v1, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;-><init>(II)V

    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private createReverseList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mTotal:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mTotal:I

    :goto_0
    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 102
    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;

    add-int/lit8 v3, v1, -0x1e

    add-int/lit8 v4, v3, 0x1

    invoke-direct {v2, v1, v4}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;-><init>(II)V

    .line 103
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 107
    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;-><init>(II)V

    .line 108
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private reverseList()V
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mList:Ljava/util/List;

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 47
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;

    .line 48
    new-instance v3, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;->getTo()I

    move-result v4

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;->getFrom()I

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->setData(Ljava/util/List;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getTotalCount()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mTotal:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 170
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->currentplay_gridview_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 171
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter$ViewHolder;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;)V

    .line 172
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->current_item_img:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter$ViewHolder;->itemImg:Landroid/widget/ImageView;

    .line 173
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->current_item_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 174
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->current_item_bg:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter$ViewHolder;->background:Landroid/widget/RelativeLayout;

    .line 175
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter$ViewHolder;

    .line 180
    :goto_0
    iget-object v0, p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;->getFrom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;->getTo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;

    .line 182
    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mCurPos:I

    add-int/lit8 v1, v1, 0x1

    .line 183
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mReverse:Z

    if-eqz v2, :cond_1

    .line 184
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;->getTo()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;->getFrom()I

    move-result v0

    if-gt v1, v0, :cond_2

    .line 185
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mCurPageNum:I

    goto :goto_1

    .line 188
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;->getFrom()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;->getTo()I

    move-result v0

    if-gt v1, v0, :cond_2

    .line 189
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mCurPageNum:I

    .line 193
    :cond_2
    :goto_1
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mCurPageNum:I

    const-string v1, "story"

    if-ne p1, v0, :cond_4

    .line 194
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter$ViewHolder;->itemImg:Landroid/widget/ImageView;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_playing_blue:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 197
    :cond_3
    iget-object v0, p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter$ViewHolder;->itemImg:Landroid/widget/ImageView;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_playing:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 200
    :cond_4
    iget-object v0, p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter$ViewHolder;->itemImg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 203
    :goto_2
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mPos:I

    if-ne v0, p1, :cond_6

    .line 204
    iget-object p1, p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 206
    iget-object p1, p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter$ViewHolder;->background:Landroid/widget/RelativeLayout;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->bg_red_4_story:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 208
    :cond_5
    iget-object p1, p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter$ViewHolder;->background:Landroid/widget/RelativeLayout;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->bg_red_4:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 210
    :goto_3
    iget p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mPos:I

    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mCurPageNum:I

    if-ne p1, v0, :cond_8

    .line 211
    iget-object p1, p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter$ViewHolder;->itemImg:Landroid/widget/ImageView;

    sget p3, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_playing_white:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 214
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 215
    iget-object p1, p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const-string v0, "#6A95EB"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    iget-object p1, p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter$ViewHolder;->background:Landroid/widget/RelativeLayout;

    sget p3, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->bg_redcircle_4_story:I

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 218
    :cond_7
    iget-object p1, p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const-string v0, "#FE2161"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    iget-object p1, p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter$ViewHolder;->background:Landroid/widget/RelativeLayout;

    sget p3, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->bg_redcircle_4:I

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_8
    :goto_4
    return-object p2
.end method

.method public setClickPos(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mPos:I

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCurrentPageNum(I)V
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GridviewAdapter"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mCurPageNum:I

    .line 138
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 128
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 129
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mList:Ljava/util/List;

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setItemType(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mItemType:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mCurPos:I

    const/4 p1, -0x1

    .line 143
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mCurPageNum:I

    .line 144
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setReverse(Z)V
    .locals 2

    .line 56
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mReverse:Z

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;

    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;->getFrom()I

    move-result p1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;->getTo()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->createReverseList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->setData(Ljava/util/List;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;->getFrom()I

    move-result p1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;->getTo()I

    move-result v0

    if-ge p1, v0, :cond_2

    goto :goto_0

    .line 70
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->createOrderList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->setData(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 75
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->createReverseList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->setData(Ljava/util/List;)V

    goto :goto_0

    .line 77
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->createOrderList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->setData(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->mTotal:I

    return-void
.end method
