.class public Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;
.super Landroid/widget/FrameLayout;
.source "WidgetUIPopNavigationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar$OnPopNavBarEventListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftOperationButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

.field private mOnNavEventListener:Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar$OnPopNavBarEventListener;

.field private mRightOperationButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

.field private mSpaceLine:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;

.field private navBarView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 54
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->getLayoutId()I

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->navBarView:Landroid/view/View;

    .line 56
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->navBarView:Landroid/view/View;

    sget p2, Lcom/alibaba/ailabs/genie/widgetui/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->mTitleView:Landroid/widget/TextView;

    .line 57
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->navBarView:Landroid/view/View;

    sget p2, Lcom/alibaba/ailabs/genie/widgetui/R$id;->left_operation_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->mLeftOperationButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    .line 58
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->mLeftOperationButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->mLeftOperationButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    sget-object p2, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->NORMAL:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->updateButtonStyle(Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;)V

    .line 60
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->navBarView:Landroid/view/View;

    sget p2, Lcom/alibaba/ailabs/genie/widgetui/R$id;->right_operation_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->mRightOperationButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    .line 61
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->mRightOperationButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->mRightOperationButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    sget-object p2, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->ACTIVE:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->updateButtonStyle(Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;)V

    .line 63
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->navBarView:Landroid/view/View;

    sget p2, Lcom/alibaba/ailabs/genie/widgetui/R$id;->space_line:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->mSpaceLine:Landroid/view/View;

    return-void
.end method

.method private getOnNavEventListener()Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar$OnPopNavBarEventListener;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->mOnNavEventListener:Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar$OnPopNavBarEventListener;

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 99
    sget v0, Lcom/alibaba/ailabs/genie/widgetui/R$layout;->widget_ui_pop_navigation_bar:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->mLeftOperationButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    if-ne p1, v0, :cond_0

    .line 105
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->mOnNavEventListener:Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar$OnPopNavBarEventListener;

    if-eqz p1, :cond_1

    .line 106
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar$OnPopNavBarEventListener;->onLeftOpertionClickBack()V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->mRightOperationButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    if-ne p1, v0, :cond_1

    .line 109
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->mOnNavEventListener:Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar$OnPopNavBarEventListener;

    if-eqz p1, :cond_1

    .line 110
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar$OnPopNavBarEventListener;->onRightOpertionClickBack()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setNavBarSpaceLineVisiable(Z)Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->mSpaceLine:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 93
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object p0
.end method

.method public setOnNavEventListener(Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar$OnPopNavBarEventListener;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->mOnNavEventListener:Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar$OnPopNavBarEventListener;

    return-object p0
.end method

.method public varargs setOperationButtonName([Ljava/lang/String;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;
    .locals 2

    if-eqz p1, :cond_0

    .line 74
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->mLeftOperationButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->mRightOperationButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIPopNavigationBar;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method
