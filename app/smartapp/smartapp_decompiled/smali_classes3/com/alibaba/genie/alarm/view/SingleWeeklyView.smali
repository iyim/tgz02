.class public Lcom/alibaba/genie/alarm/view/SingleWeeklyView;
.super Lcom/alibaba/genie/alarm/view/BaseRelativeView;
.source "SingleWeeklyView.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private isTabSelected:Z

.field private ivSelectableTab:Landroid/widget/ImageView;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->isTabSelected:Z

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->isTabSelected:Z

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->text:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p2}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->getCustomAttr(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->isTabSelected:Z

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->text:Ljava/lang/String;

    .line 32
    invoke-virtual {p0, p2}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->getCustomAttr(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->isTabSelected:Z

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->text:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, p2}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->getCustomAttr(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/alarm/view/SingleWeeklyView;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->isTabSelected:Z

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/genie/alarm/view/SingleWeeklyView;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->isTabSelected:Z

    return p1
.end method


# virtual methods
.method getCustomAttr(Landroid/util/AttributeSet;)V
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/basedomain/R$styleable;->Single_Weekly_Custom_View:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    sget v0, Lcom/alibaba/ailabs/basedomain/R$styleable;->Single_Weekly_Custom_View_tab_name:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->text:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->mView:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/basedomain/R$id;->iv_selectable_tab:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->ivSelectableTab:Landroid/widget/ImageView;

    return-void
.end method

.method getInflateView()I
    .locals 1

    .line 43
    sget v0, Lcom/alibaba/ailabs/basedomain/R$layout;->view_single_weekly:I

    return v0
.end method

.method public isTabSelected()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->isTabSelected:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 55
    invoke-super {p0}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;->onAttachedToWindow()V

    .line 56
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->tv_weekly_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    iget-object v1, p0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    new-instance v0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView$1;-><init>(Lcom/alibaba/genie/alarm/view/SingleWeeklyView;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTabSelected(Z)V
    .locals 1

    .line 74
    iput-boolean p1, p0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->isTabSelected:Z

    .line 75
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->setTabSelectedHandle(Z)V

    .line 76
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->invalidate()V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->postInvalidate()V

    :goto_0
    return-void
.end method

.method setTabSelectedHandle(Z)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->ivSelectableTab:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 89
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->icon_single_weekly_selected:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 91
    :cond_1
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->icon_single_weekly_unselected:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
