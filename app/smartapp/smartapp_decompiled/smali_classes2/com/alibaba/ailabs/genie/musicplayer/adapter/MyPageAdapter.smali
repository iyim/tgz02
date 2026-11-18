.class public Lcom/alibaba/ailabs/genie/musicplayer/adapter/MyPageAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MyPageAdapter.java"


# instance fields
.field private mFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 17
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/MyPageAdapter;->mFragmentList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/MyPageAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/MyPageAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method
