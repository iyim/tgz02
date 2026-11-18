.class public Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;
.super Landroid/widget/RelativeLayout;
.source "YearMonthPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;
    }
.end annotation


# instance fields
.field protected final REP_DELAY:I

.field private mCurrentYear:I

.field private mEnableBeforeYear:Z

.field private mIsRptDecrement:Z

.field private mIsRptIncrement:Z

.field private mIsRptMonth:Z

.field private mIsRptYear:Z

.field protected maxYear:I

.field protected minYear:I

.field protected monthDownBtn:Landroid/widget/Button;

.field protected monthEditText:Landroid/widget/TextView;

.field protected monthUpBtn:Landroid/widget/Button;

.field protected rptUpdateHandler:Landroid/os/Handler;

.field protected yearDownBtn:Landroid/widget/Button;

.field protected yearEditText:Landroid/widget/TextView;

.field protected yearUpBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    .line 36
    iput p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->REP_DELAY:I

    .line 37
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mEnableBeforeYear:Z

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mIsRptIncrement:Z

    .line 42
    iput-boolean p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mIsRptDecrement:Z

    .line 43
    iput-boolean p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mIsRptYear:Z

    .line 44
    iput-boolean p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mIsRptMonth:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x64

    .line 36
    iput p2, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->REP_DELAY:I

    .line 37
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    .line 39
    iput-boolean p2, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mEnableBeforeYear:Z

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mIsRptIncrement:Z

    .line 42
    iput-boolean v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mIsRptDecrement:Z

    .line 43
    iput-boolean v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mIsRptYear:Z

    .line 44
    iput-boolean v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mIsRptMonth:Z

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v0, "alipay_template_year_month_picker"

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mIsRptYear:Z

    return p0
.end method

.method static synthetic access$002(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mIsRptYear:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mIsRptMonth:Z

    return p0
.end method

.method static synthetic access$102(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mIsRptMonth:Z

    return p1
.end method

.method static synthetic access$200(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mIsRptIncrement:Z

    return p0
.end method

.method static synthetic access$202(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mIsRptIncrement:Z

    return p1
.end method

.method static synthetic access$300(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mIsRptDecrement:Z

    return p0
.end method

.method static synthetic access$302(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mIsRptDecrement:Z

    return p1
.end method

.method private addMonthPrefix(I)Ljava/lang/String;
    .locals 2

    .line 303
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public decrement(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->decrementYear()V

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->decrementMonth()V

    :goto_0
    return-void
.end method

.method protected decrementMonth()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/16 v0, 0xc

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->addMonthPrefix(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected decrementYear()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 250
    iget v1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->minYear:I

    if-ge v0, v1, :cond_0

    .line 251
    iget v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->maxYear:I

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public disableBeforeYear()V
    .locals 2

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mEnableBeforeYear:Z

    .line 110
    iget v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->minYear:I

    iget v1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mCurrentYear:I

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->minYear:I

    return-void
.end method

.method public enableBeforeYear()V
    .locals 1

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mEnableBeforeYear:Z

    return-void
.end method

.method public getMonth()I
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMonthStr(Z)Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 150
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getYear()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected increment(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->incrementYear()V

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->incrementMonth()V

    :goto_0
    return-void
.end method

.method protected incrementMonth()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0xc

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->addMonthPrefix(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected incrementYear()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 219
    iget v1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->maxYear:I

    if-le v0, v1, :cond_0

    .line 220
    iget v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->minYear:I

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 59
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const-string v0, "year_up_btn"

    .line 61
    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->yearUpBtn:Landroid/widget/Button;

    const-string v0, "year_down_btn"

    .line 62
    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->yearDownBtn:Landroid/widget/Button;

    const-string v0, "year_text"

    .line 63
    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    const-string v0, "month_up_btn"

    .line 65
    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->monthUpBtn:Landroid/widget/Button;

    const-string v0, "month_down_btn"

    .line 66
    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->monthDownBtn:Landroid/widget/Button;

    const-string v0, "month_text"

    .line 67
    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->yearUpBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->setButtonAction(Landroid/widget/Button;ZZ)V

    .line 70
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->yearDownBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->setButtonAction(Landroid/widget/Button;ZZ)V

    .line 71
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->monthUpBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->setButtonAction(Landroid/widget/Button;ZZ)V

    .line 72
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->monthDownBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0, v2, v2}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->setButtonAction(Landroid/widget/Button;ZZ)V

    .line 75
    invoke-virtual {p0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->setDefaultYearLimit()V

    return-void
.end method

.method protected setButtonAction(Landroid/widget/Button;ZZ)V
    .locals 1

    .line 163
    new-instance v0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$1;-><init>(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;ZZ)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    new-instance v0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$2;-><init>(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;ZZ)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 188
    new-instance p2, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$3;

    invoke-direct {p2, p0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$3;-><init>(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setCurrentDate()V
    .locals 4

    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 94
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 95
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 97
    invoke-virtual {p0, v2, v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->setYearMonth(II)V

    return-void
.end method

.method protected setDefaultYearLimit()V
    .locals 3

    .line 83
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 84
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mCurrentYear:I

    .line 86
    iget v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mCurrentYear:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    add-int/lit8 v1, v0, -0x64

    const/4 v2, 0x0

    .line 87
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->minYear:I

    add-int/lit8 v0, v0, 0x63

    .line 88
    iput v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->maxYear:I

    return-void
.end method

.method public setMaxYear(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->maxYear:I

    return-void
.end method

.method public setMinYear(I)V
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mEnableBeforeYear:Z

    if-nez v0, :cond_0

    .line 115
    iget v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->mCurrentYear:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->minYear:I

    goto :goto_0

    .line 117
    :cond_0
    iput p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->minYear:I

    :goto_0
    return-void
.end method

.method public setYearMonth(II)V
    .locals 2

    .line 127
    iget v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->maxYear:I

    iget v1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->minYear:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 128
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->addMonthPrefix(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
