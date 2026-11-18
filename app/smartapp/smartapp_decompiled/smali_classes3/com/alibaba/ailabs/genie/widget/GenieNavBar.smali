.class public Lcom/alibaba/ailabs/genie/widget/GenieNavBar;
.super Landroid/widget/FrameLayout;
.source "GenieNavBar.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/widget/GenieNavBar$SimpleOnTabSelectedListener;,
        Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnTabSelectedListener;,
        Lcom/alibaba/ailabs/genie/widget/GenieNavBar$SimpleOnNavEventListener;,
        Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnNavEventListener;
    }
.end annotation


# instance fields
.field private mBackBtn:Landroid/widget/ImageView;

.field private mHomeBtn:Landroid/widget/ImageView;

.field private mHostActivity:Landroid/app/Activity;

.field private mLeftMask:Landroid/view/View;

.field private mOnNavEventListener:Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnNavEventListener;

.field private mOnTabSelectedListener:Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnTabSelectedListener;

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

    .line 94
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 98
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 273
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 274
    sget v0, Lcom/alibaba/ailabs/genie/widget/R$id;->id_genie_nav_bar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->setId(I)V

    .line 277
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/widget/R$layout;->layout_genie_nav_bar:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 279
    sget v0, Lcom/alibaba/ailabs/genie/widget/R$id;->nav_bar_back_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mBackBtn:Landroid/widget/ImageView;

    .line 280
    sget v0, Lcom/alibaba/ailabs/genie/widget/R$id;->nav_bar_home_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mHomeBtn:Landroid/widget/ImageView;

    .line 281
    sget v0, Lcom/alibaba/ailabs/genie/widget/R$id;->nav_bar_tab_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    .line 283
    sget v0, Lcom/alibaba/ailabs/genie/widget/R$id;->nav_bar_mask_left_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mLeftMask:Landroid/view/View;

    .line 284
    sget v0, Lcom/alibaba/ailabs/genie/widget/R$id;->nav_bar_mask_right_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mRightMask:Landroid/view/View;

    .line 286
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mBackBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mHomeBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p1, p0}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    return-void
.end method


# virtual methods
.method public addTab(Ljava/lang/String;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->addTab(Ljava/lang/String;I)V

    return-void
.end method

.method public addTab(Ljava/lang/String;I)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->addTab(Ljava/lang/String;IZ)V

    return-void
.end method

.method public addTab(Ljava/lang/String;IZ)V
    .locals 2

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    return-void
.end method

.method public addTab(Ljava/lang/String;Z)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->addTab(Ljava/lang/String;IZ)V

    return-void
.end method

.method public getOnNavEventListener()Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnNavEventListener;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mOnNavEventListener:Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnNavEventListener;

    return-object v0
.end method

.method public getOnTabSelectedListener()Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnTabSelectedListener;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mOnTabSelectedListener:Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnTabSelectedListener;

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    return v0
.end method

.method public getTabCount()I
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    return v0
.end method

.method public hideMask()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mLeftMask:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mRightMask:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mBackBtn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 211
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mOnNavEventListener:Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnNavEventListener;

    if-eqz p1, :cond_0

    .line 212
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnNavEventListener;->onBack()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mHostActivity:Landroid/app/Activity;

    if-eqz p1, :cond_3

    .line 218
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mHomeBtn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 223
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mOnNavEventListener:Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnNavEventListener;

    if-eqz p1, :cond_2

    .line 224
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnNavEventListener;->onHome()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 230
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mHostActivity:Landroid/app/Activity;

    if-eqz p1, :cond_3

    .line 231
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MAIN"

    .line 232
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.HOME"

    .line 233
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mHostActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mOnTabSelectedListener:Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    .line 264
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mOnTabSelectedListener:Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnTabSelectedListener;

    invoke-interface {v1, v0, p1}, Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnTabSelectedListener;->onTabReselected(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mOnTabSelectedListener:Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    .line 246
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mOnTabSelectedListener:Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnTabSelectedListener;

    invoke-interface {v1, v0, p1}, Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnTabSelectedListener;->onTabSelected(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mOnTabSelectedListener:Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    .line 255
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mOnTabSelectedListener:Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnTabSelectedListener;

    invoke-interface {v1, v0, p1}, Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnTabSelectedListener;->onTabUnselected(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->removeAllTabs()V

    return-void
.end method

.method public removeTab(I)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->removeTabAt(I)V

    return-void
.end method

.method public removeTab(Ljava/lang/String;)V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 165
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 168
    :cond_0
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

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

.method public setHostActivity(Landroid/app/Activity;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mHostActivity:Landroid/app/Activity;

    return-void
.end method

.method public setOnNavEventListener(Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnNavEventListener;)Lcom/alibaba/ailabs/genie/widget/GenieNavBar;
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mOnNavEventListener:Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnNavEventListener;

    return-object p0
.end method

.method public setOnTabSelectedListener(Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnTabSelectedListener;)Lcom/alibaba/ailabs/genie/widget/GenieNavBar;
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mOnTabSelectedListener:Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnTabSelectedListener;

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

    .line 122
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->setTabList(Ljava/util/List;I)V

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

    .line 126
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 129
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

    .line 132
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->addTab(Ljava/lang/String;Z)V

    goto :goto_1

    .line 134
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->addTab(Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method

.method public showMask()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mLeftMask:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->mRightMask:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
