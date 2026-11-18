.class public Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;
.super Landroid/widget/FrameLayout;
.source "PushMessageNotificationBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$NoticationBarOnClickListener;,
        Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;
    }
.end annotation


# instance fields
.field private mBuilder:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

.field private mContainer:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mDoubleModeSubTitle:Landroid/widget/TextView;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftOperationButton:Landroid/widget/Button;

.field private mMainTitle:Landroid/widget/TextView;

.field private mNotificationLogo:Landroid/widget/ImageView;

.field private mRightOperationButton:Landroid/widget/Button;

.field private mSingleModeSubTitle:Landroid/widget/TextView;

.field private mSourceBizName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->getInstance(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;

    move-result-object p0

    return-object p0
.end method

.method private static getInstance(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;
    .locals 2

    .line 42
    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->access$000(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p0, v0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    .line 44
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->initUI()V

    .line 45
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->initData()V

    return-object v0
.end method


# virtual methods
.method public initData()V
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->access$300(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->access$300(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->access$300(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mNotificationLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->access$400(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mMainTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->access$400(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->access$500(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

    move-result-object v0

    sget-object v2, Lcom/alibaba/ailabs/genie/message/utils/NoticationType;->SINGLE_LINE_TITLE:Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v0, v2, :cond_5

    .line 107
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mSingleModeSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mSingleModeSubTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->access$600(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->access$600(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mDoubleModeSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mDoubleModeSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mSingleModeSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mSingleModeSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mDoubleModeSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mDoubleModeSubTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->access$600(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->access$600(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 118
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->access$700(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 120
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mSourceBizName:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u6765\u81ea"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->access$700(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 123
    :cond_7
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mSourceBizName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :goto_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->access$800(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->access$800(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mLeftOperationButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mLeftOperationButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->access$800(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_8
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->access$900(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->access$900(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mRightOperationButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mRightOperationButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->access$900(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public initUI()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alibaba/ailabs/genie/message/R$layout;->push_message_notification_bar:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    sget v1, Lcom/alibaba/ailabs/genie/message/R$id;->container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mContainer:Landroid/widget/FrameLayout;

    .line 67
    sget v1, Lcom/alibaba/ailabs/genie/message/R$id;->notification_bar_logo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mNotificationLogo:Landroid/widget/ImageView;

    .line 68
    sget v1, Lcom/alibaba/ailabs/genie/message/R$id;->feature_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mMainTitle:Landroid/widget/TextView;

    .line 69
    sget v1, Lcom/alibaba/ailabs/genie/message/R$id;->feature_subTitle1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mSingleModeSubTitle:Landroid/widget/TextView;

    .line 70
    sget v1, Lcom/alibaba/ailabs/genie/message/R$id;->feature_subTitle2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mDoubleModeSubTitle:Landroid/widget/TextView;

    .line 71
    sget v1, Lcom/alibaba/ailabs/genie/message/R$id;->feature_time_from:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mSourceBizName:Landroid/widget/TextView;

    .line 72
    sget v1, Lcom/alibaba/ailabs/genie/message/R$id;->operation_left_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mLeftOperationButton:Landroid/widget/Button;

    .line 73
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mLeftOperationButton:Landroid/widget/Button;

    new-instance v2, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$1;-><init>(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    sget v1, Lcom/alibaba/ailabs/genie/message/R$id;->operation_right_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mRightOperationButton:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mRightOperationButton:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$2;-><init>(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mBuilder:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->access$500(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/NoticationType;->SINGLE_LINE_TITLE:Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

    const-string v2, ""

    if-ne v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mSingleModeSubTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mDoubleModeSubTitle:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mDoubleModeSubTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mSingleModeSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mDoubleModeSubTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mDoubleModeSubTitle:Landroid/widget/TextView;

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

    .line 137
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->mMainTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
