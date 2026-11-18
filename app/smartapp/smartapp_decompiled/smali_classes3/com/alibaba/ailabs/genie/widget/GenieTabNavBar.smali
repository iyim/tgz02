.class public Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;
.super Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;
.source "GenieTabNavBar.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar$SimpleOnTabSelectedListener;,
        Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar$OnTabSelectedListener;
    }
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftMask:Landroid/view/View;

.field private mOnTabSelectedListener:Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar$OnTabSelectedListener;

.field private mRightMask:Landroid/view/View;

.field private mTabLayout:Landroid/support/design/widget/TabLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    sget p3, Lcom/alibaba/ailabs/genie/widget/R$id;->nav_bar_tab_layout:I

    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/support/design/widget/TabLayout;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    .line 82
    sget p3, Lcom/alibaba/ailabs/genie/widget/R$id;->nav_bar_mask_left_view:I

    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mLeftMask:Landroid/view/View;

    .line 83
    sget p3, Lcom/alibaba/ailabs/genie/widget/R$id;->nav_bar_mask_right_view:I

    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mRightMask:Landroid/view/View;

    .line 85
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p3, p0}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->updateStyle(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private updateStyle(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/widget/R$styleable;->genie_widget_nav_bar_style_name:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 227
    sget p2, Lcom/alibaba/ailabs/genie/widget/R$styleable;->genie_widget_nav_bar_style_name_showMask:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 231
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mLeftMask:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 232
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mRightMask:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addTab(Ljava/lang/String;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->addTab(Ljava/lang/String;I)V

    return-void
.end method

.method public addTab(Ljava/lang/String;I)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->addTab(Ljava/lang/String;IZ)V

    return-void
.end method

.method public addTab(Ljava/lang/String;IZ)V
    .locals 4

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/alibaba/ailabs/genie/widget/R$layout;->item_genie_nav_bar_tab_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    .line 150
    sget v2, Lcom/alibaba/ailabs/genie/widget/R$id;->genie_nav_bar_tab_name_item_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 151
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p1, v0, p2, p3}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    return-void
.end method

.method public addTab(Ljava/lang/String;Z)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->addTab(Ljava/lang/String;IZ)V

    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    .line 94
    sget v0, Lcom/alibaba/ailabs/genie/widget/R$layout;->layout_genie_nav_bar_tab:I

    return v0
.end method

.method public getOnTabSelectedListener()Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar$OnTabSelectedListener;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mOnTabSelectedListener:Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar$OnTabSelectedListener;

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    return v0
.end method

.method public getTabCount()I
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    return v0
.end method

.method public hideMask()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mLeftMask:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mRightMask:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mOnTabSelectedListener:Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar$OnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    .line 217
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mOnTabSelectedListener:Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar$OnTabSelectedListener;

    invoke-interface {v1, v0, p1}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar$OnTabSelectedListener;->onTabReselected(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mOnTabSelectedListener:Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar$OnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    .line 199
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mOnTabSelectedListener:Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar$OnTabSelectedListener;

    invoke-interface {v1, v0, p1}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar$OnTabSelectedListener;->onTabSelected(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mOnTabSelectedListener:Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar$OnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    .line 208
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mOnTabSelectedListener:Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar$OnTabSelectedListener;

    invoke-interface {v1, v0, p1}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar$OnTabSelectedListener;->onTabUnselected(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->removeAllTabs()V

    return-void
.end method

.method public removeTab(I)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->removeTabAt(I)V

    return-void
.end method

.method public removeTab(Ljava/lang/String;)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 162
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p1, v1}, Landroid/support/design/widget/TabLayout;->removeTabAt(I)V

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar$OnTabSelectedListener;)Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mOnTabSelectedListener:Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar$OnTabSelectedListener;

    return-object p0
.end method

.method public setTabList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->setTabList(Ljava/util/List;I)V

    return-void
.end method

.method public setTabList(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 116
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 119
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-ne v1, p2, :cond_1

    const/4 v3, 0x1

    .line 122
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->addTab(Ljava/lang/String;Z)V

    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->addTab(Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method

.method public showMask()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mLeftMask:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->mRightMask:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
