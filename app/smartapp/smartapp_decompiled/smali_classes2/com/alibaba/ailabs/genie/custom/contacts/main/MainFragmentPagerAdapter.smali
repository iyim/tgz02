.class public Lcom/alibaba/ailabs/genie/custom/contacts/main/MainFragmentPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "MainFragmentPagerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "contacts_home"


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;",
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
            "Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 24
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainFragmentPagerAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainFragmentPagerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainFragmentPagerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, -0x2

    return p1
.end method

.method public setSelected(I)V
    .locals 5

    .line 28
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainFragmentPagerAdapter;->mList:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainFragmentPagerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 32
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainFragmentPagerAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;

    if-ne v2, p1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 33
    :goto_1
    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
