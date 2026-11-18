.class public Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;
.super Ljava/lang/Object;
.source "CmccView.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccContract$View;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "cmcc-CmccView"


# instance fields
.field private activity:Landroid/app/Activity;

.field private ct_package_layout:Landroid/support/constraint/ConstraintLayout;

.field private ll_package_btn:Landroid/widget/LinearLayout;

.field private presenter:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccContract$Presenter;

.field private tv_package_content:Landroid/widget/TextView;

.field private tv_package_text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->activity:Landroid/app/Activity;

    .line 41
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->ct_package_layout:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->ct_package_layout:Landroid/support/constraint/ConstraintLayout;

    .line 42
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->tv_package_content:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->tv_package_content:Landroid/widget/TextView;

    .line 43
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->tv_package_text:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->tv_package_text:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->ll_package_btn:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->ll_package_btn:Landroid/widget/LinearLayout;

    .line 45
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->ll_package_btn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->ll_package_btn:I

    if-ne p1, v0, :cond_0

    .line 56
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->presenter:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccContract$Presenter;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccContract$Presenter;->openWebView()V

    :cond_0
    return-void
.end method

.method public setPackageContent(ILjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/high16 v1, 0x3fc00000    # 1.5f

    const-string v2, "#FFFFFF"

    const-string v3, "\u6211\u7684\u901a\u8bdd\u5957\u9910"

    const-string v4, "#9C9C9C"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->ll_package_btn:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->activity:Landroid/app/Activity;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$drawable;->btn_grey_solid:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->tv_package_text:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "\u672c\u673a\u56fa\u53f7 "

    .line 96
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils;->getBuilder(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 97
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->setForegroundColor(I)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 98
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->append(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 99
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->setForegroundColor(I)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->create()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 101
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->tv_package_content:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 83
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->ll_package_btn:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->activity:Landroid/app/Activity;

    sget v5, Lcom/alibaba/ailabs/genie/contacts/R$drawable;->btn_blue_solid:I

    invoke-static {v0, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->tv_package_text:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "\u672c\u6708\u5957\u9910 "

    .line 85
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils;->getBuilder(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 86
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->setForegroundColor(I)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 87
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->append(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 88
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->setForegroundColor(I)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->setProportion(F)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->create()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 91
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->tv_package_content:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 71
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->ll_package_btn:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->activity:Landroid/app/Activity;

    sget v5, Lcom/alibaba/ailabs/genie/contacts/R$drawable;->btn_grey_solid:I

    invoke-static {v0, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->tv_package_text:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "\u672c\u6708\u5957\u9910\u5269\u4f59 "

    .line 73
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils;->getBuilder(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 74
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->setForegroundColor(I)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 75
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->append(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 76
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->setForegroundColor(I)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 77
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->setProportion(F)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    const-string p2, " \u5206\u949f"

    .line 78
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->append(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->setForegroundColor(I)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->create()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 80
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->tv_package_content:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setPackageVisible(Z)V
    .locals 1

    .line 108
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->hasInstallCmRtc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->ct_package_layout:Landroid/support/constraint/ConstraintLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setPresenter(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccContract$Presenter;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->presenter:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccContract$Presenter;

    return-void
.end method
