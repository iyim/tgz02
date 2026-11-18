.class public Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;
.super Landroid/widget/FrameLayout;
.source "WidgetUINotificationBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$NoticationBarOnClickListener;,
        Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;
    }
.end annotation


# instance fields
.field private mBuilder:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

.field private mContainer:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mDoubleModeSubTitle:Landroid/widget/TextView;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftOperationButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

.field private mMainTitle:Landroid/widget/TextView;

.field private mNotificationLogo:Landroid/widget/ImageView;

.field private mRightOperationButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

.field private mSingleModeSubTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->getInstance(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;

    move-result-object p0

    return-object p0
.end method

.method private static getInstance(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;
    .locals 2

    .line 37
    new-instance v0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->access$000(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p0, v0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    .line 39
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->initUI()V

    .line 40
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->initData()V

    return-object v0
.end method


# virtual methods
.method public initData()V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->access$300(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->access$300(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->access$300(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mNotificationLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->access$400(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mMainTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->access$400(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->access$500(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUINoticationType;

    move-result-object v0

    sget-object v2, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUINoticationType;->SINGLE_LINE_TITLE:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUINoticationType;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_5

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mSingleModeSubTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->access$600(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->access$600(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mDoubleModeSubTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mDoubleModeSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 105
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mSingleModeSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mDoubleModeSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mDoubleModeSubTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->access$600(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->access$600(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :goto_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->access$700(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->access$700(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mLeftOperationButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mLeftOperationButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->access$700(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_7
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->access$800(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->access$800(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mRightOperationButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mRightOperationButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->access$800(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public initUI()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alibaba/ailabs/genie/widgetui/R$layout;->widget_ui_notification_bar:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    sget v1, Lcom/alibaba/ailabs/genie/widgetui/R$id;->container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mContainer:Landroid/widget/FrameLayout;

    .line 62
    sget v1, Lcom/alibaba/ailabs/genie/widgetui/R$id;->notification_bar_logo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mNotificationLogo:Landroid/widget/ImageView;

    .line 63
    sget v1, Lcom/alibaba/ailabs/genie/widgetui/R$id;->feature_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mMainTitle:Landroid/widget/TextView;

    .line 64
    sget v1, Lcom/alibaba/ailabs/genie/widgetui/R$id;->feature_subTitle1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mSingleModeSubTitle:Landroid/widget/TextView;

    .line 65
    sget v1, Lcom/alibaba/ailabs/genie/widgetui/R$id;->feature_subTitle2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mDoubleModeSubTitle:Landroid/widget/TextView;

    .line 66
    sget v1, Lcom/alibaba/ailabs/genie/widgetui/R$id;->operation_left_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mLeftOperationButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    .line 67
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mLeftOperationButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    new-instance v2, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$1;-><init>(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    sget v1, Lcom/alibaba/ailabs/genie/widgetui/R$id;->operation_right_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mRightOperationButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mRightOperationButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    new-instance v1, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$2;-><init>(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->access$500(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUINoticationType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUINoticationType;->SINGLE_LINE_TITLE:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUINoticationType;

    const-string v2, ""

    if-ne v0, v1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mSingleModeSubTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mDoubleModeSubTitle:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mDoubleModeSubTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mSingleModeSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mDoubleModeSubTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mDoubleModeSubTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->mMainTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
