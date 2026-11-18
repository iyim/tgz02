.class public Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;
.super Landroid/databinding/ViewDataBinding;
.source "MusicPlayerFragmentBinding.java"


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

.field public final albumSeekBgId:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final artistTvId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final backgroundIv:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final bottomBtnRy:Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final buyBackground:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final changpanId:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final dividerTvId:Landroid/widget/TextView;
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

.field public final lrcFullViewId:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final lrcId:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final lrcLy:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final lrcMengIv:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final lrcTxtId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/RelativeLayout;
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

.field public final noLrcNotice:Landroid/widget/RelativeLayout;
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

.field public final playModelIbId:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final playedTimeTvId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final playerViewId:Landroid/support/constraint/ConstraintLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final preIbId:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final rySeekId:Landroid/widget/RelativeLayout;
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

.field public final songTagImage:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final songVipStatus:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final soundQuality:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final sourceIvId:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final sourceTvId:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final textWriterId:Landroid/widget/TextView;
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

.field public final writeFromId:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903c3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090067

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0904b4

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903dc

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09069b

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090052

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903c7

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09066f

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09088e

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09043a

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903c5

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0905f6

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0905ff

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0905f8

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903c4

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903c6

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900c9

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09008e

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09047c

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090038

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090036

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090602

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090603

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900e1

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090687

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09019c

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0904b3

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0906c6

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090363

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090581

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0905b8

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0905b9

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0904bc

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090434

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09049e

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090360

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09049f

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0904a3

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090407

    const/16 v2, 0x27

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

    .line 144
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 235
    iput-wide v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->mDirtyFlags:J

    .line 145
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x28

    invoke-static {p1, p2, v3, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/16 v1, 0x15

    .line 146
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->albumIvId:Landroid/widget/ImageView;

    const/16 v1, 0x14

    .line 147
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->albumSeekBgId:Landroid/widget/ImageView;

    const/4 v1, 0x6

    .line 148
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->artistTvId:Landroid/widget/TextView;

    const/4 v1, 0x2

    .line 149
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->backgroundIv:Landroid/widget/ImageView;

    const/16 v1, 0x12

    .line 150
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->bottomBtnRy:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x11

    .line 151
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->buyBackground:Landroid/widget/ImageView;

    const/16 v1, 0x18

    .line 152
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->changpanId:Landroid/widget/ImageView;

    const/16 v1, 0x1a

    .line 153
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->dividerTvId:Landroid/widget/TextView;

    const/16 v1, 0x24

    .line 154
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->likeIbId:Landroid/widget/ImageButton;

    const/16 v1, 0x1d

    .line 155
    aget-object v1, p1, v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->line:Landroid/view/View;

    const/4 v1, 0x1

    .line 156
    aget-object v1, p1, v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    const/16 v1, 0xf

    .line 157
    aget-object v1, p1, v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcId:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    const/16 v1, 0xb

    .line 158
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcLy:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    .line 159
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcMengIv:Landroid/widget/ImageView;

    const/4 v1, 0x7

    .line 160
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcTxtId:Landroid/widget/TextView;

    .line 161
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->mboundView0:Landroid/widget/RelativeLayout;

    .line 162
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->mboundView0:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 163
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->mediaBackId:Landroid/widget/ImageView;

    const/16 v0, 0x27

    .line 164
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->moreIvId:Landroid/widget/ImageView;

    const/16 v0, 0x22

    .line 165
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->nextIbId:Landroid/widget/ImageButton;

    const/16 v0, 0xa

    .line 166
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->noLrcNotice:Landroid/widget/RelativeLayout;

    const/16 v0, 0x13

    .line 167
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->payTips:Landroid/widget/TextView;

    const/16 v0, 0x23

    .line 168
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playIbIv:Landroid/widget/ImageButton;

    const/16 v0, 0x25

    .line 169
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playListIbId:Landroid/widget/ImageButton;

    const/16 v0, 0x26

    .line 170
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playModelIbId:Landroid/widget/ImageButton;

    const/16 v0, 0x1b

    .line 171
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playedTimeTvId:Landroid/widget/TextView;

    const/4 v0, 0x3

    .line 172
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playerViewId:Landroid/support/constraint/ConstraintLayout;

    const/16 v0, 0x21

    .line 173
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->preIbId:Landroid/widget/ImageButton;

    const/16 v0, 0x1e

    .line 174
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->rySeekId:Landroid/widget/RelativeLayout;

    const/16 v0, 0x1f

    .line 175
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    const/16 v0, 0x20

    .line 176
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    const/16 v0, 0xc

    .line 177
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->songTagImage:Landroid/widget/LinearLayout;

    const/16 v0, 0xe

    .line 178
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->songVipStatus:Landroid/widget/ImageView;

    const/16 v0, 0xd

    .line 179
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->soundQuality:Landroid/widget/TextView;

    const/16 v0, 0x16

    .line 180
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sourceIvId:Landroid/widget/ImageView;

    const/16 v0, 0x17

    .line 181
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sourceTvId:Landroid/widget/TextView;

    const/16 v0, 0x8

    .line 182
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->textWriterId:Landroid/widget/TextView;

    const/16 v0, 0x19

    .line 183
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->timeRyId:Landroid/widget/RelativeLayout;

    const/4 v0, 0x5

    .line 184
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->titleTvId:Landroid/widget/TextView;

    const/16 v0, 0x1c

    .line 185
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->totalTimeTvId:Landroid/widget/TextView;

    const/16 v0, 0x9

    .line 186
    aget-object p1, p1, v0

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->writeFromId:Landroid/widget/ImageView;

    .line 187
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->setRootTag(Landroid/view/View;)V

    .line 189
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 255
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;
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

    .line 259
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "layout/music_player_fragment_0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0

    .line 260
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 247
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;
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

    const v0, 0x7f0b01a8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 251
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;
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

    .line 239
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;
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

    const v0, 0x7f0b01a8

    .line 243
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x0

    .line 228
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->mDirtyFlags:J

    .line 229
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

    .line 202
    monitor-enter p0

    .line 203
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 204
    monitor-exit p0

    return v0

    .line 206
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

    .line 194
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 195
    :try_start_0
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->mDirtyFlags:J

    .line 196
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 196
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
