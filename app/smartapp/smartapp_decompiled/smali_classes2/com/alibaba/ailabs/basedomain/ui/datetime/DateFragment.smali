.class public Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;
.super Lcom/alibaba/ailabs/basedomain/common/BaseFragment;
.source "DateFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/ui/IBaseUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$AskTimeViewModel;,
        Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$AskDayViewModel;,
        Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$AskSolarDateViewModel;,
        Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$AskLunarDateViewModel;,
        Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$DateTimeViewModel;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Encyclopedia"


# instance fields
.field private mAmView:Landroid/widget/TextView;

.field private mBigView:Landroid/widget/TextView;

.field private mCityView:Landroid/widget/TextView;

.field private mData:Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

.field private mPmView:Landroid/widget/TextView;

.field private mSmall1View:Landroid/widget/TextView;

.field private mSmall2View:Landroid/widget/TextView;

.field private mSmall3View:Landroid/widget/TextView;

.field private root:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/BaseFragment;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->getFestival()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private changeAmPmHighLight(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mAmView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/basedomain/R$color;->datetime_domain_ampm_bright_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mPmView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/basedomain/R$color;->datetime_domain_ampm_dead_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mAmView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/basedomain/R$color;->datetime_domain_ampm_dead_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mPmView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/basedomain/R$color;->datetime_domain_ampm_bright_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private getFestival()Ljava/lang/String;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getLunarFestival()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getSolarFestival()Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getSolarTerm()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getViewModel()Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$DateTimeViewModel;
    .locals 5

    .line 135
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "ask_lunar_date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "ask_solar_date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "ask_time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "ask_day"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No matched DateTimeViewModel, type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Encyclopedia"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 143
    :cond_1
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$AskTimeViewModel;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$AskTimeViewModel;-><init>(Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;)V

    return-object v0

    .line 141
    :cond_2
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$AskDayViewModel;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$AskDayViewModel;-><init>(Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;)V

    return-object v0

    .line 139
    :cond_3
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$AskLunarDateViewModel;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$AskLunarDateViewModel;-><init>(Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;)V

    return-object v0

    .line 137
    :cond_4
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$AskSolarDateViewModel;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$AskSolarDateViewModel;-><init>(Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x2a75b72a -> :sswitch_3
        -0x2439cb2d -> :sswitch_2
        -0x2124c70e -> :sswitch_1
        0x7a3614dd -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getDomainType()Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;
    .locals 1

    .line 157
    sget-object v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->DATE_TIME:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    return-object v0
.end method

.method public getPageNameForUT()Ljava/lang/String;
    .locals 1

    const-string v0, "time_display"

    return-object v0
.end method

.method public getPagePropertiesForUT()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSPMForUT()Ljava/lang/String;
    .locals 1

    const-string v0, "a1z3lt.12021501"

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->from(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    const-string v0, "base_domain_datetime_date_fragment"

    .line 55
    invoke-virtual {p1, v0, p2, p3}, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->inflate(Ljava/lang/String;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 57
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->layout_exit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    const-string v0, "a1z3lt.12021501"

    const-string v1, "time_display"

    const-string v2, "escapepod_home"

    .line 58
    invoke-virtual {p2, v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setHomeUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "escapepod_back"

    .line 59
    invoke-virtual {p2, v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;)V

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 67
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->root:Landroid/widget/RelativeLayout;

    .line 68
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->city:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mCityView:Landroid/widget/TextView;

    .line 69
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->big:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mBigView:Landroid/widget/TextView;

    .line 70
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->am:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mAmView:Landroid/widget/TextView;

    .line 71
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->pm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mPmView:Landroid/widget/TextView;

    .line 72
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->small1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mSmall1View:Landroid/widget/TextView;

    .line 73
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->small2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mSmall2View:Landroid/widget/TextView;

    .line 74
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->small3:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mSmall3View:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DateFragment bundle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Encyclopedia"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v0, "data"

    .line 78
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DateFragment DateTime data:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    const-string v0, "No extra find "

    invoke-static {v1, v0, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->getViewModel()Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$DateTimeViewModel;

    move-result-object p2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DateTimeViewModel :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mCityView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$DateTimeViewModel;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mBigView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$DateTimeViewModel;->getBig()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$DateTimeViewModel;->getBig()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->isChinese(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mBigView:Landroid/widget/TextView;

    const/high16 v1, 0x42dc0000    # 110.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mBigView:Landroid/widget/TextView;

    const/high16 v2, 0x43020000    # 130.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v0, "is non-chinese, "

    .line 91
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_1
    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$DateTimeViewModel;->showAmPm()Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mAmView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mPmView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 97
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$DateTimeViewModel;->isAm()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p3, 0x1

    .line 98
    invoke-direct {p0, p3}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->changeAmPmHighLight(Z)V

    goto :goto_2

    .line 100
    :cond_3
    invoke-direct {p0, p3}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->changeAmPmHighLight(Z)V

    .line 103
    :goto_2
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mSmall1View:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$DateTimeViewModel;->getSmall1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mSmall2View:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$DateTimeViewModel;->getSmall2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->mSmall3View:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$DateTimeViewModel;->getSmall3()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method
