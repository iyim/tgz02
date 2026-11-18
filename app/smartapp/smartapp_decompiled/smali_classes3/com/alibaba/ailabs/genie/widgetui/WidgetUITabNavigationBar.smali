.class public Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;
.super Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;
.source "WidgetUITabNavigationBar.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# instance fields
.field private mTablayout:Landroid/support/design/widget/TabLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->getNavBarView()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/genie/widgetui/R$id;->nav_bar_tab_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TabLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->mTablayout:Landroid/support/design/widget/TabLayout;

    .line 28
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p1, p0}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method private setTabTextViewStyle(Landroid/widget/TextView;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/widgetui/R$color;->widget_ui_neutral_color_gray4:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x1

    .line 73
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/widgetui/R$color;->widget_ui_neutral_color_gray2:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x0

    .line 76
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addTab(Ljava/lang/String;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->addTab(Ljava/lang/String;I)V

    return-void
.end method

.method public addTab(Ljava/lang/String;I)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->addTab(Ljava/lang/String;IZ)V

    return-void
.end method

.method public addTab(Ljava/lang/String;IZ)V
    .locals 4

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->getmLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/widgetui/R$layout;->widget_ui_navigation_bar_tab_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    .line 119
    sget v2, Lcom/alibaba/ailabs/genie/widgetui/R$id;->nav_bar_tab_item_textview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 120
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-direct {p0, v1, p3}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->setTabTextViewStyle(Landroid/widget/TextView;Z)V

    .line 124
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p1, v0, p2, p3}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    return-void
.end method

.method public addTab(Ljava/lang/String;Z)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->addTab(Ljava/lang/String;IZ)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 160
    sget v0, Lcom/alibaba/ailabs/genie/widgetui/R$layout;->widget_ui_navigation_tab_bar:I

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    return v0
.end method

.method public getTabCount()I
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    return v0
.end method

.method public getmTablayout()Landroid/support/design/widget/TabLayout;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->mTablayout:Landroid/support/design/widget/TabLayout;

    return-object v0
.end method

.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->getmOnNavEventListener()Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->getmOnNavEventListener()Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;->onTabReselected(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->getmOnNavEventListener()Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->getmOnNavEventListener()Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;->onTabSelected(Ljava/lang/String;I)V

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p1

    .line 40
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 41
    nop

    nop

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->setTabTextViewStyle(Landroid/widget/TextView;Z)V

    :cond_1
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->getmOnNavEventListener()Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->getmOnNavEventListener()Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;->onTabUnselected(Ljava/lang/String;I)V

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p1

    .line 55
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 56
    nop

    nop

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->setTabTextViewStyle(Landroid/widget/TextView;Z)V

    :cond_1
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->removeAllTabs()V

    return-void
.end method

.method public removeTab(I)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->removeTabAt(I)V

    return-void
.end method

.method public removeTab(Ljava/lang/String;)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 133
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->mTablayout:Landroid/support/design/widget/TabLayout;

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

    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->setTabList(Ljava/util/List;I)V

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

    .line 85
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 88
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

    .line 91
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->addTab(Ljava/lang/String;Z)V

    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUITabNavigationBar;->addTab(Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
