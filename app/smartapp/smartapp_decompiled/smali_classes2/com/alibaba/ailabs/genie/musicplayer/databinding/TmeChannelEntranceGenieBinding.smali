.class public Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;
.super Landroid/databinding/ViewDataBinding;
.source "TmeChannelEntranceGenieBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final accountInfoViewId:Landroid/support/constraint/ConstraintLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final accountNameTvId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final brandLogoIvId:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final brandRankTvId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final channelBrandIvId:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final channelEntranceViewId:Landroid/support/constraint/ConstraintLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final channelPortraitIvId:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final dailyThirtySubTitleTvId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final dailyThirtyTitleTvId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final dailyThirtyViewId:Landroid/support/constraint/ConstraintLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final favoritesSubTitleTvId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final favoritesTitleTvId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final favoritesViewId:Landroid/support/constraint/ConstraintLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final logoDividerLineIvId:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDirtyFlags:J

.field public final openAccountHintTvId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final songListSubTitleTvId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final songListTitleTvId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final songListViewId:Landroid/support/constraint/ConstraintLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09000e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900e2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900e5

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09000f

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090463

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09013c

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09013b

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09013a

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0905f5

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0905f3

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0905f2

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901c8

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901c7

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901c5

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903bf

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090090

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090091

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 147
    iput-wide v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->mDirtyFlags:J

    .line 79
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x12

    invoke-static {p1, p2, v3, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    .line 80
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->accountInfoViewId:Landroid/support/constraint/ConstraintLayout;

    const/4 v1, 0x4

    .line 81
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->accountNameTvId:Landroid/widget/TextView;

    const/16 v1, 0x10

    .line 82
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->brandLogoIvId:Landroid/widget/ImageView;

    const/16 v1, 0x11

    .line 83
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->brandRankTvId:Landroid/widget/TextView;

    const/4 v1, 0x2

    .line 84
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->channelBrandIvId:Landroid/widget/ImageView;

    .line 85
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->channelEntranceViewId:Landroid/support/constraint/ConstraintLayout;

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->channelEntranceViewId:Landroid/support/constraint/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 87
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->channelPortraitIvId:Landroid/widget/ImageView;

    const/16 v0, 0x8

    .line 88
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->dailyThirtySubTitleTvId:Landroid/widget/TextView;

    const/4 v0, 0x7

    .line 89
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->dailyThirtyTitleTvId:Landroid/widget/TextView;

    const/4 v0, 0x6

    .line 90
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->dailyThirtyViewId:Landroid/support/constraint/ConstraintLayout;

    const/16 v0, 0xe

    .line 91
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->favoritesSubTitleTvId:Landroid/widget/TextView;

    const/16 v0, 0xd

    .line 92
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->favoritesTitleTvId:Landroid/widget/TextView;

    const/16 v0, 0xc

    .line 93
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->favoritesViewId:Landroid/support/constraint/ConstraintLayout;

    const/16 v0, 0xf

    .line 94
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->logoDividerLineIvId:Landroid/widget/ImageView;

    const/4 v0, 0x5

    .line 95
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->openAccountHintTvId:Landroid/widget/TextView;

    const/16 v0, 0xb

    .line 96
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->songListSubTitleTvId:Landroid/widget/TextView;

    const/16 v0, 0xa

    .line 97
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->songListTitleTvId:Landroid/widget/TextView;

    const/16 v0, 0x9

    .line 98
    aget-object p1, p1, v0

    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->songListViewId:Landroid/support/constraint/ConstraintLayout;

    .line 99
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->setRootTag(Landroid/view/View;)V

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 167
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "layout/tme_channel_entrance_genie_0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0

    .line 172
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "view tag isn\'t correct on view:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 159
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const v0, 0x7f0b0201

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 163
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 151
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const v0, 0x7f0b0201

    .line 155
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x0

    .line 140
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->mDirtyFlags:J

    .line 141
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 116
    monitor-exit p0

    return v0

    .line 118
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 106
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 107
    :try_start_0
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->mDirtyFlags:J

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 108
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method
