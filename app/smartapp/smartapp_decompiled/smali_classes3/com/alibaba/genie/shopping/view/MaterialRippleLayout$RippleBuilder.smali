.class public Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;
.super Ljava/lang/Object;
.source "MaterialRippleLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RippleBuilder"
.end annotation


# instance fields
.field private final child:Landroid/view/View;

.field private final context:Landroid/content/Context;

.field private rippleAlpha:F

.field private rippleBackground:I

.field private rippleColor:I

.field private rippleDelayClick:Z

.field private rippleDiameter:F

.field private rippleDuration:I

.field private rippleFadeDuration:I

.field private rippleHover:Z

.field private rippleOverlay:Z

.field private ripplePersistent:Z

.field private rippleRoundedCorner:F

.field private rippleSearchAdapter:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x6b6159

    .line 704
    iput v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleColor:I

    const/4 v0, 0x1

    .line 705
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleOverlay:Z

    .line 706
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleHover:Z

    const/high16 v0, 0x420c0000    # 35.0f

    .line 707
    iput v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleDiameter:F

    const/16 v0, 0x3e8

    .line 708
    iput v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleDuration:I

    const v0, 0x3f19999a    # 0.6f

    .line 709
    iput v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleAlpha:F

    const/4 v0, 0x0

    .line 710
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleDelayClick:Z

    const/16 v1, 0x1f4

    .line 711
    iput v1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleFadeDuration:I

    .line 712
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->ripplePersistent:Z

    .line 713
    iput v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleBackground:I

    .line 714
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleSearchAdapter:Z

    const/4 v0, 0x0

    .line 715
    iput v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleRoundedCorner:F

    .line 718
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    .line 719
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;
    .locals 7

    .line 783
    new-instance v0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;-><init>(Landroid/content/Context;)V

    .line 784
    iget v1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleColor:I

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->setRippleColor(I)V

    .line 785
    iget v1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleAlpha:F

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->setDefaultRippleAlpha(F)V

    .line 786
    iget-boolean v1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleDelayClick:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->setRippleDelayClick(Z)V

    .line 787
    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleDiameter:F

    invoke-static {v1, v2}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->setRippleDiameter(I)V

    .line 788
    iget v1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleDuration:I

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->setRippleDuration(I)V

    .line 789
    iget v1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleFadeDuration:I

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->setRippleFadeDuration(I)V

    .line 790
    iget-boolean v1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleHover:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->setRippleHover(Z)V

    .line 791
    iget-boolean v1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->ripplePersistent:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->setRipplePersistent(Z)V

    .line 792
    iget-boolean v1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleOverlay:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->setRippleOverlay(Z)V

    .line 793
    iget v1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleBackground:I

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->setRippleBackground(I)V

    .line 794
    iget-boolean v1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleSearchAdapter:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->setRippleInAdapter(Z)V

    .line 795
    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleRoundedCorner:F

    invoke-static {v1, v2}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->setRippleRoundedCorners(I)V

    .line 797
    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 798
    iget-object v2, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 801
    instance-of v3, v2, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    if-nez v3, :cond_0

    goto :goto_0

    .line 802
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MaterialRippleLayout could not be created: parent of the view already is a MaterialRippleLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 806
    iget-object v3, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 807
    iget-object v4, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 810
    :goto_1
    iget-object v4, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_3

    .line 813
    invoke-virtual {v2, v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-object v0
.end method

.method public rippleAlpha(F)Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;
    .locals 0

    .line 748
    iput p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleAlpha:F

    return-object p0
.end method

.method public rippleBackground(I)Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;
    .locals 0

    .line 768
    iput p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleBackground:I

    return-object p0
.end method

.method public rippleColor(I)Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;
    .locals 0

    .line 723
    iput p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleColor:I

    return-object p0
.end method

.method public rippleDelayClick(Z)Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;
    .locals 0

    .line 753
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleDelayClick:Z

    return-object p0
.end method

.method public rippleDiameterDp(I)Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;
    .locals 0

    int-to-float p1, p1

    .line 738
    iput p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleDiameter:F

    return-object p0
.end method

.method public rippleDuration(I)Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;
    .locals 0

    .line 743
    iput p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleDuration:I

    return-object p0
.end method

.method public rippleFadeDuration(I)Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;
    .locals 0

    .line 758
    iput p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleFadeDuration:I

    return-object p0
.end method

.method public rippleHover(Z)Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;
    .locals 0

    .line 733
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleHover:Z

    return-object p0
.end method

.method public rippleInAdapter(Z)Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;
    .locals 0

    .line 773
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleSearchAdapter:Z

    return-object p0
.end method

.method public rippleOverlay(Z)Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;
    .locals 0

    .line 728
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleOverlay:Z

    return-object p0
.end method

.method public ripplePersistent(Z)Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;
    .locals 0

    .line 763
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->ripplePersistent:Z

    return-object p0
.end method

.method public rippleRoundedCorners(I)Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;
    .locals 0

    int-to-float p1, p1

    .line 778
    iput p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$RippleBuilder;->rippleRoundedCorner:F

    return-object p0
.end method
