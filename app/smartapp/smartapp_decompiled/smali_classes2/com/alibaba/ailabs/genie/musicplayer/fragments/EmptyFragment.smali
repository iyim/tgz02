.class public Lcom/alibaba/ailabs/genie/musicplayer/fragments/EmptyFragment;
.super Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;
.source "EmptyFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment<",
        "Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;",
        ">;"
    }
.end annotation


# instance fields
.field private mBack:Landroid/widget/ImageView;

.field private mItemType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/EmptyFragment;->mItemType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/EmptyFragment;->mItemType:Ljava/lang/String;

    const-string v1, "program"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/EmptyFragment;->mItemType:Ljava/lang/String;

    const-string v1, "story"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->music_player_fragment:I

    return v0

    .line 20
    :cond_1
    :goto_0
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->ximalaya_player_fragment:I

    return v0
.end method

.method public handError(Ljava/lang/Integer;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected initView()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/EmptyFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->mediaBackId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/EmptyFragment;->mBack:Landroid/widget/ImageView;

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/EmptyFragment;->mBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/EmptyFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/EmptyFragment$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/EmptyFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
