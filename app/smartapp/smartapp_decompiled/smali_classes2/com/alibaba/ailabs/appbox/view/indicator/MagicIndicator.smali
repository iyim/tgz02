.class public Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;
.super Landroid/widget/FrameLayout;
.source "MagicIndicator.java"


# instance fields
.field private mNavigator:Lcom/alibaba/ailabs/appbox/view/indicator/IPagerNavigator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getNavigator()Lcom/alibaba/ailabs/appbox/view/indicator/IPagerNavigator;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;->mNavigator:Lcom/alibaba/ailabs/appbox/view/indicator/IPagerNavigator;

    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;->mNavigator:Lcom/alibaba/ailabs/appbox/view/indicator/IPagerNavigator;

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/appbox/view/indicator/IPagerNavigator;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;->mNavigator:Lcom/alibaba/ailabs/appbox/view/indicator/IPagerNavigator;

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/ailabs/appbox/view/indicator/IPagerNavigator;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;->mNavigator:Lcom/alibaba/ailabs/appbox/view/indicator/IPagerNavigator;

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/appbox/view/indicator/IPagerNavigator;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public setNavigator(Lcom/alibaba/ailabs/appbox/view/indicator/IPagerNavigator;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;->mNavigator:Lcom/alibaba/ailabs/appbox/view/indicator/IPagerNavigator;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 52
    invoke-interface {v0}, Lcom/alibaba/ailabs/appbox/view/indicator/IPagerNavigator;->onDetachFromMagicIndicator()V

    .line 54
    :cond_1
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;->mNavigator:Lcom/alibaba/ailabs/appbox/view/indicator/IPagerNavigator;

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;->removeAllViews()V

    .line 56
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;->mNavigator:Lcom/alibaba/ailabs/appbox/view/indicator/IPagerNavigator;

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_2

    .line 57
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;->mNavigator:Lcom/alibaba/ailabs/appbox/view/indicator/IPagerNavigator;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;->mNavigator:Lcom/alibaba/ailabs/appbox/view/indicator/IPagerNavigator;

    invoke-interface {p1}, Lcom/alibaba/ailabs/appbox/view/indicator/IPagerNavigator;->onAttachToMagicIndicator()V

    :cond_2
    return-void
.end method
