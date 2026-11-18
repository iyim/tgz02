.class Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;
.super Landroid/widget/FrameLayout;
.source "BaseTransientBottomBar.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SnackbarBaseLayout"
.end annotation


# instance fields
.field private mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 658
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 662
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 663
    sget-object v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 664
    sget p2, Lcom/alibaba/ailabs/genie/widget/topsnackbar/R$styleable;->SnackbarLayout_elevation:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 665
    sget p2, Lcom/alibaba/ailabs/genie/widget/topsnackbar/R$styleable;->SnackbarLayout_elevation:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 668
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x1

    .line 670
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 683
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 684
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 685
    invoke-interface {v0, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 688
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 693
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 694
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 695
    invoke-interface {v0, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .line 675
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 676
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    .line 677
    invoke-interface/range {v0 .. v9}, Landroid/view/View$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    :cond_0
    return-void
.end method

.method setOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method
