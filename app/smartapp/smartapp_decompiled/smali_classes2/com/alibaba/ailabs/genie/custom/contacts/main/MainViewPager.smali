.class public Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "MainViewPager.java"


# instance fields
.field private mFirstLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewPager;->mFirstLayout:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewPager;->mFirstLayout:Z

    return-void
.end method


# virtual methods
.method public isFirstLayout()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewPager;->mFirstLayout:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 39
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 27
    invoke-super/range {p0 .. p5}, Landroid/support/v4/view/ViewPager;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewPager;->mFirstLayout:Z

    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 0
    .param p1    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewPager;->mFirstLayout:Z

    return-void
.end method
