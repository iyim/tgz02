.class Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;
.super Ljava/lang/Object;
.source "CurrentPlayListFragment.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->initObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 257
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;",
            ">;)V"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->onLoadComplete()V

    .line 263
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$500(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$500(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 265
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$500(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->round_rectangle_bg:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->onRefreshComplete(Z)V

    .line 269
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mItemType:Ljava/lang/String;

    invoke-static {v0, p1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$600(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;Ljava/util/List;Ljava/lang/String;)V

    .line 270
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 271
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->getData()Ljava/util/List;

    move-result-object p1

    .line 272
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    .line 273
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getPosition()I

    move-result v2

    .line 274
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getPosition()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 276
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$702(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;Z)Z

    goto :goto_0

    :cond_1
    if-le v2, v3, :cond_2

    .line 278
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$702(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;Z)Z

    .line 280
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$700(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Z

    move-result v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setIsReverse(Z)V

    .line 281
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$700(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 282
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$800(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v3, "\u5012\u5e8f\u64ad\u653e"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$900(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_reverse:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 285
    :cond_3
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$800(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v3, "\u6b63\u5e8f\u64ad\u653e"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$900(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_not_reverse:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    .line 290
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x1e

    if-gt p1, v1, :cond_5

    .line 291
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    iget-object v1, p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mCurrentSong:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$1000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    .line 294
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->showLoading(Z)V

    return-void
.end method
