.class public Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;
.super Landroid/databinding/ViewDataBinding;
.source "XimalayaPlayerFragmentBinding.java"


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
.field public final albumIvId:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final artistTvId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final businessBtnRy:Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final dividerTvId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final finishTvId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final likeIbId:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final line:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final mediaBackId:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final moreIvId:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final nextIbId:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final payTips:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final playIbIv:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final playListIbId:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final playSpeedTvId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final playedTimeTvId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final preIbId:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final seekBarId:Landroid/widget/SeekBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final seekTimeTvId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final sourceIvId:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final subTitleTvId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final timeRyId:Landroid/widget/RelativeLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final titleTvId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final totalTimeTvId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final totalTvId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903dc

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09069b

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090052

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0906c7

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090036

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090602

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090687

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09019c

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0904b3

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0906c6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090636

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901e1

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09047c

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900c1

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090363

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0905b8

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0905b9

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0904bc

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090434

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09049e

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090360

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09049f

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0904a4

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090407

    const/16 v2, 0x18

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

    .line 99
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 175
    iput-wide v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->mDirtyFlags:J

    .line 100
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x19

    invoke-static {p1, p2, v3, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x5

    .line 101
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->albumIvId:Landroid/widget/ImageView;

    const/4 v1, 0x3

    .line 102
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->artistTvId:Landroid/widget/TextView;

    const/16 v1, 0xe

    .line 103
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->businessBtnRy:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    .line 104
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->dividerTvId:Landroid/widget/TextView;

    const/16 v1, 0xc

    .line 105
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->finishTvId:Landroid/widget/TextView;

    const/16 v1, 0x15

    .line 106
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->likeIbId:Landroid/widget/ImageButton;

    const/16 v1, 0xf

    .line 107
    aget-object v1, p1, v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->line:Landroid/view/View;

    .line 108
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 110
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->mediaBackId:Landroid/widget/ImageView;

    const/16 v0, 0x18

    .line 111
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->moreIvId:Landroid/widget/ImageView;

    const/16 v0, 0x13

    .line 112
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->nextIbId:Landroid/widget/ImageButton;

    const/16 v0, 0xd

    .line 113
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->payTips:Landroid/widget/TextView;

    const/16 v0, 0x14

    .line 114
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->playIbIv:Landroid/widget/ImageButton;

    const/16 v0, 0x16

    .line 115
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->playListIbId:Landroid/widget/ImageButton;

    const/16 v0, 0x17

    .line 116
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->playSpeedTvId:Landroid/widget/TextView;

    const/16 v0, 0x9

    .line 117
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->playedTimeTvId:Landroid/widget/TextView;

    const/16 v0, 0x12

    .line 118
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->preIbId:Landroid/widget/ImageButton;

    const/16 v0, 0x10

    .line 119
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    const/16 v0, 0x11

    .line 120
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    const/4 v0, 0x6

    .line 121
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sourceIvId:Landroid/widget/ImageView;

    const/16 v0, 0xb

    .line 122
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->subTitleTvId:Landroid/widget/TextView;

    const/4 v0, 0x7

    .line 123
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->timeRyId:Landroid/widget/RelativeLayout;

    const/4 v0, 0x2

    .line 124
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->titleTvId:Landroid/widget/TextView;

    const/16 v0, 0xa

    .line 125
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->totalTimeTvId:Landroid/widget/TextView;

    const/4 v0, 0x4

    .line 126
    aget-object p1, p1, v0

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->totalTvId:Landroid/widget/TextView;

    .line 127
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->setRootTag(Landroid/view/View;)V

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 195
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;
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

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "layout/ximalaya_player_fragment_0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0

    .line 200
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 187
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;
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

    const v0, 0x7f0b024e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 191
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;
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

    .line 179
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;
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

    const v0, 0x7f0b024e

    .line 183
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x0

    .line 168
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->mDirtyFlags:J

    .line 169
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

    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 144
    monitor-exit p0

    return v0

    .line 146
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

    .line 134
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 135
    :try_start_0
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->mDirtyFlags:J

    .line 136
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 136
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
