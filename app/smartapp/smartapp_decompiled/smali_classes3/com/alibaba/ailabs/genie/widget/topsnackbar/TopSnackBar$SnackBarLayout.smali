.class public final Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar$SnackBarLayout;
.super Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;
.source "TopSnackBar.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SnackBarLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 371
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 375
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .line 380
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onMeasure(II)V

    .line 385
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar$SnackBarLayout;->getChildCount()I

    move-result p1

    .line 386
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar$SnackBarLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar$SnackBarLayout;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar$SnackBarLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 388
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar$SnackBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 389
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    .line 390
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 391
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 390
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
