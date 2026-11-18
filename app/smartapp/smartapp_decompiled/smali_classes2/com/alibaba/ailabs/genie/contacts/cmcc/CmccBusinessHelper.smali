.class public Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;
.super Ljava/lang/Object;
.source "CmccBusinessHelper.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "cmcc-BusinessHelper"


# instance fields
.field private final clickableSpan:Landroid/text/style/ClickableSpan;

.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

.field private mCmccPresenter:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;

.field private mContainer:Landroid/view/ViewGroup;

.field private mMainActivity:Lcom/alibaba/ailabs/genie/contacts/MainActivity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;Landroid/view/ViewGroup;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->clickableSpan:Landroid/text/style/ClickableSpan;

    .line 37
    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mMainActivity:Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    .line 38
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    .line 39
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mMainActivity:Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->cmccPresenter:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mCmccPresenter:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;

    .line 40
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mContainer:Landroid/view/ViewGroup;

    .line 41
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;)Lcom/alibaba/ailabs/genie/contacts/MainActivity;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mMainActivity:Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;)Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mCmccPresenter:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->btnBusiness:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/cmcc/-$$Lambda$CmccBusinessHelper$83qVhN0LIoWuG-UMfTqBFQmmrFE;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/cmcc/-$$Lambda$CmccBusinessHelper$83qVhN0LIoWuG-UMfTqBFQmmrFE;-><init>(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mCmccPresenter:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-boolean v0, v0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->isActivityDisplay:Z

    if-nez v0, :cond_1

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->setHintVisible(Z)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public dialFragmentDisplay(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;)V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mCmccPresenter:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;

    if-nez v1, :cond_0

    goto :goto_1

    .line 89
    :cond_0
    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->number_content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 92
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mCmccPresenter:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;

    iget-boolean v3, v3, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->isGetPackage:Z

    if-nez v3, :cond_1

    .line 93
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->showHintDialog(ILjava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->getRemainFreeTime()Ljava/lang/String;

    move-result-object v1

    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x3

    .line 96
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->showHintDialog(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 98
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->getRemainFreeTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->showHintDialog(ILjava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_4

    .line 102
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->setHintVisibility(Z)V

    goto :goto_1

    .line 106
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mCmccPresenter:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->isGetPackage:Z

    if-nez p1, :cond_4

    .line 107
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->showHintDialog(ILjava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->setHintVisibility(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public synthetic lambda$init$67$CmccBusinessHelper(Landroid/view/View;)V
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mCmccPresenter:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->openWebView()V

    goto :goto_0

    :cond_0
    const-string p1, "cmcc-BusinessHelper"

    const-string v0, "OnClick:mCmccPresenter = null"

    .line 49
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "cmcc-BusinessHelper"

    const-string v1, "onDestroy"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mMainActivity:Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    .line 59
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    .line 60
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mCmccPresenter:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;

    .line 61
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setHintVisibility(Z)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->flHint:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setHintVisible(Z)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    if-nez v0, :cond_0

    const-string p1, "cmcc-BusinessHelper"

    const-string v0, "setHintVisible: mBinding = null"

    .line 123
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 126
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->hasInstallCmRtc()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->flHint:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public showHintDialog(ILjava/lang/String;)V
    .locals 6

    .line 139
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->hasInstallCmRtc()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    const-string v1, "\u8d2d\u4e70\u5957\u9910"

    const/high16 v2, 0x3fc00000    # 1.5f

    const-string v3, "#9C9C9C"

    const/16 v4, 0x8

    const-string v5, "#FFFFFF"

    if-eq p1, v0, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    goto/16 :goto_0

    .line 188
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->flHint:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "\u4f53\u9a8c\u65f6\u957f "

    .line 178
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils;->getBuilder(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 179
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->setForegroundColor(I)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    const-string p2, "\u5df2\u7528\u5b8c"

    .line 180
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->append(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->setProportion(F)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 181
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->setForegroundColor(I)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->create()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 183
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->tvTop:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->tvBottom:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->btnBusiness:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    const-string p1, "\u5f00\u901a"

    .line 160
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils;->getBuilder(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 161
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->setForegroundColor(I)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    const-string p2, "\u901a\u8bdd\u670d\u52a1"

    .line 162
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->append(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    const-string p2, "#00BFC1"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->setForegroundColor(I)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->clickableSpan:Landroid/text/style/ClickableSpan;

    .line 163
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->setClickSpan(Landroid/text/style/ClickableSpan;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    const-string p2, "\u529f\u80fd"

    .line 168
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->append(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->setForegroundColor(I)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->create()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 170
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->tvTop:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->tvBottom:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->tvBottom:Landroid/widget/TextView;

    const-string p2, "\u53ef\u6253\u56fd\u5185\u4efb\u4f55\u7535\u8bdd\u53f7\u7801"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->btnBusiness:Landroid/widget/Button;

    const-string p2, "\u514d\u8d39\u4f53\u9a8c"

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    return-void

    :cond_5
    const-string p1, "\u4f53\u9a8c\u65f6\u957f\u5269\u4f59 "

    .line 149
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils;->getBuilder(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 150
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->setForegroundColor(I)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 151
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->append(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->setProportion(F)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 152
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->setForegroundColor(I)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    const-string p2, "\u5206\u949f"

    .line 153
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->append(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->setForegroundColor(I)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->create()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 155
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->tvTop:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->tvBottom:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->btnBusiness:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_6
    :goto_1
    const-string p1, "cmcc-BusinessHelper"

    const-string p2, "showHintDialog: mBinding = null"

    .line 140
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
