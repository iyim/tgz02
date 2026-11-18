.class public Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public backgroundColor:I

.field public spinnerStyle:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1683
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 1694
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;->backgroundColor:I

    const/4 p1, 0x0

    .line 1695
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;->spinnerStyle:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1673
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 1694
    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;->backgroundColor:I

    const/4 v0, 0x0

    .line 1695
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;->spinnerStyle:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    .line 1674
    sget-object v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1675
    sget p2, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_Layout_layout_srlBackgroundColor:I

    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;->backgroundColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;->backgroundColor:I

    .line 1676
    sget p2, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_Layout_layout_srlSpinnerStyle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1677
    sget-object p2, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->VALUES:[Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_Layout_layout_srlSpinnerStyle:I

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->Translate:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    iget v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->ordinal:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    aget-object p2, p2, v0

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;->spinnerStyle:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    .line 1679
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
