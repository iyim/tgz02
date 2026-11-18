.class public Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SongItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$OnItemClickListener;,
        Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SongItemAdapter"


# instance fields
.field private defaultSelection:I

.field private mContext:Landroid/content/Context;

.field private mCurrentMetedata:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

.field private mItemType:Ljava/lang/String;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

.field private mOnItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$OnItemClickListener;

.field private mTypeNum:Landroid/graphics/Typeface;

.field private pageNumSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 p2, -0x1

    .line 33
    iput p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->defaultSelection:I

    .line 42
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->pageNumSet:Ljava/util/HashSet;

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mContext:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mList:Ljava/util/List;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string p2, "fonts/AlibabaSans102-Rg.ttf"

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mTypeNum:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->pageNumSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->defaultSelection:I

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;
    .locals 1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->getItem(I)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 165
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->getItem(I)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 167
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->item_song_recycle:I

    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 173
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;)V

    .line 174
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->item_song_recycle:I

    invoke-virtual {v2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 175
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->tvSongName:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->tvSongName:Landroid/widget/TextView;

    .line 176
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->ivCopyRight:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->ivCopyRight:Landroid/widget/TextView;

    .line 177
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->tvArtist:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->tvArtist:Landroid/widget/TextView;

    .line 178
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->payStatusIvId:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->payStatusIv:Landroid/widget/TextView;

    .line 179
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->tvIndex:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->tvIndex:Landroid/widget/TextView;

    .line 180
    iget-object v2, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->tvIndex:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mTypeNum:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 181
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->likeIvId:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->liked:Landroid/widget/ImageView;

    .line 182
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->playingIvId:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->playingIvId:Landroid/widget/ImageView;

    .line 183
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;

    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    .line 188
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",pos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getPosition()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SongItemAdapter"

    invoke-static {v4, v2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v2, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->tvSongName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v2, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->tvArtist:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mCurrentMetedata:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    if-eqz v2, :cond_2

    .line 193
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getId()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getId()Ljava/lang/String;

    move-result-object v5

    .line 195
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->defaultSelection:I

    .line 199
    :cond_2
    iget-object v2, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->liked:Landroid/widget/ImageView;

    new-instance v5, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$SongItemAdapter$a1pLsAiwbCzV0kuHLWyzLsHUE4c;

    invoke-direct {v5, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$SongItemAdapter$a1pLsAiwbCzV0kuHLWyzLsHUE4c;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;I)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    sget-object v5, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_CURRENT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    if-ne v2, v5, :cond_3

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title--2:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",collect:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->isCollected()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v2, p1, 0x1

    const/16 v3, 0xa

    if-ge v2, v3, :cond_4

    .line 210
    iget-object v3, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->tvIndex:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 212
    :cond_4
    iget-object v3, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->tvIndex:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :goto_1
    iget-object v2, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->tvIndex:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    invoke-virtual {p3, v1}, Landroid/view/View;->setPressed(Z)V

    .line 216
    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->defaultSelection:I

    const-string v3, "#FE2161"

    const/16 v4, 0x8

    if-ne p1, v2, :cond_6

    .line 217
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->tvIndex:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->playingIvId:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mItemType:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isChildResource(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 220
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->gif_playing_child:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v2, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->playingIvId:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 221
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->tvArtist:Landroid/widget/TextView;

    const-string v2, "#6A95EB"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->tvSongName:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 224
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->gif_playing:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v2, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->playingIvId:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 225
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->tvArtist:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->tvSongName:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 229
    :cond_6
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->tvIndex:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->playingIvId:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->tvIndex:Landroid/widget/TextView;

    const-string v2, "#2B3852"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->tvArtist:Landroid/widget/TextView;

    const-string v5, "#7383A2"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->tvSongName:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->tvIndex:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    :goto_2
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getCopyright()Ljava/lang/String;

    move-result-object p1

    const-string v2, "1"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 238
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->tvSongName:Landroid/widget/TextView;

    const-string v2, "#ACB7CE"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->tvIndex:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->tvArtist:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->ivCopyRight:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->payStatusIv:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 244
    :cond_7
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->ivCopyRight:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->payStatusIv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    :goto_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mItemType:Ljava/lang/String;

    const-string v1, "radio"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "story"

    const-string v2, "program"

    if-eqz p1, :cond_8

    .line 249
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->payStatusIv:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_CURRENT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    if-ne p1, v5, :cond_a

    .line 251
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->liked:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 253
    :cond_8
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_CURRENT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    if-ne p1, v5, :cond_9

    .line 254
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->liked:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 255
    :cond_9
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_CURRENT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    if-ne p1, v5, :cond_a

    .line 256
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->liked:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    :cond_a
    :goto_4
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->isCollected()Z

    move-result p1

    const/4 v5, 0x0

    if-eqz p1, :cond_e

    .line 261
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_5

    .line 263
    :cond_b
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mItemType:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isChildResource(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 264
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->liked:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_like_child:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 266
    :cond_c
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->liked:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_like_new:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 262
    :cond_d
    :goto_5
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->liked:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_program_like:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 269
    :cond_e
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_6

    .line 271
    :cond_f
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mItemType:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isChildResource(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 272
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->liked:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_unlike_child:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 274
    :cond_10
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->liked:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_unlike_new:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 270
    :cond_11
    :goto_6
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->liked:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_program_unlike:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 278
    :goto_7
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getPayStatus()Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 280
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 281
    iget-object v0, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->payStatusIv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u4ed8\u8d39"

    .line 282
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "#DC6E11"

    if-eqz v0, :cond_12

    .line 283
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->payStatusIv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->bg_pay_status:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 284
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->payStatusIv:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    :cond_12
    const-string v0, "\u5df2\u8d2d"

    .line 285
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 286
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->payStatusIv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->bg_payed_status:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 287
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->payStatusIv:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    :cond_13
    const-string v0, "vip"

    .line 288
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 289
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->payStatusIv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->bg_vip_status:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 290
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->payStatusIv:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    :cond_14
    const-string v0, "\u8bd5\u542c"

    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 292
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->payStatusIv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->bg_pay_status_try:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 293
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->payStatusIv:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    .line 296
    :cond_15
    iget-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->payStatusIv:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_16
    :goto_8
    return-object p3
.end method

.method public synthetic lambda$getView$25$SongItemAdapter(ILandroid/view/View;)V
    .locals 0

    .line 200
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$OnItemClickListener;

    if-eqz p2, :cond_0

    .line 201
    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$OnItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method public notifyDataSetChanged(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 149
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->getFirstVisiblePosition()I

    move-result v0

    .line 151
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->getLastVisiblePosition()I

    move-result v1

    if-lt p2, v0, :cond_0

    if-gt p2, v1, :cond_0

    sub-int v0, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 156
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 157
    invoke-virtual {p0, p2, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setCurrentData(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mCurrentMetedata:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    const/4 p1, -0x1

    .line 53
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->defaultSelection:I

    return-void
.end method

.method public setData(Ljava/util/List;Ljava/lang/String;Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->defaultSelection:I

    .line 67
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mItemType:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    if-eqz p1, :cond_4

    .line 70
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    const/4 p2, 0x0

    .line 71
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getPageNum()I

    move-result p3

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->pageNumSet:Ljava/util/HashSet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->pageNumSet:Ljava/util/HashSet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 79
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getPageNum()I

    move-result p2

    .line 80
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mList:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getPageNum()I

    move-result v0

    if-le p3, v0, :cond_1

    .line 82
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    if-ge p3, p2, :cond_3

    .line 84
    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mList:Ljava/util/List;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 86
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 87
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 91
    :cond_2
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method public setItemClickListener(Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$OnItemClickListener;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$OnItemClickListener;

    return-void
.end method
