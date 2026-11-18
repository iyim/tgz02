.class public Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider;
.super Ljava/lang/Object;
.source "CashierUiWidgetProvider.java"

# interfaces
.implements Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider;


# instance fields
.field protected mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/render/api/ICashierProvider;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    return-void
.end method


# virtual methods
.method public createIconView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createLoadingView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createOverView(Landroid/content/Context;)Lcom/alipay/birdnest/api/FBOverView;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createViewByTag(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    const-string p3, "switch"

    .line 40
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 41
    new-instance p2, Landroid/widget/CheckBox;

    invoke-direct {p2, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const-string p1, "mini_ui_switch"

    .line 42
    invoke-static {p1}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getDrawableId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public createWebView(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$LoadUrlListener;Ljava/util/Map;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$LoadUrlListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/android/app/render/api/ICashierProvider;->createWebView(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$LoadUrlListener;Ljava/util/Map;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public createWebViewAsync(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$LoadUrlListener;Ljava/util/Map;Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$CreateCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$LoadUrlListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$CreateCallback;",
            ")V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 67
    invoke-interface/range {v0 .. v5}, Lcom/alipay/android/app/render/api/ICashierProvider;->createWebViewAsync(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$LoadUrlListener;Ljava/util/Map;Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$CreateCallback;)V

    :cond_0
    return-void
.end method

.method public createYearMounthPickerDialog(Landroid/content/Context;IILcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$YearMounthPickerCallback;)Landroid/app/Dialog;
    .locals 2

    const-string v0, "alipay_template_month_dialog_title"

    .line 107
    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getStringId(Ljava/lang/String;)I

    move-result v0

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;

    invoke-direct {v1, v0, p1}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 109
    new-instance p1, Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider$1;

    invoke-direct {p1, p0, v1, p4}, Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider$1;-><init>(Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider;Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$YearMounthPickerCallback;)V

    invoke-virtual {v1, p1}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->setPositiveListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 120
    new-instance p1, Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider$2;

    invoke-direct {p1, p0}, Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider$2;-><init>(Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider;)V

    invoke-virtual {v1, p1}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->setNegativeListener(Landroid/content/DialogInterface$OnClickListener;)V

    if-gez p2, :cond_0

    if-gez p3, :cond_0

    .line 127
    invoke-virtual {v1}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->setCurrentDate()V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {v1, p2, p3}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->setStartPickDate(II)V

    .line 131
    :goto_0
    invoke-virtual {v1}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->create()Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public destroyWebView(Landroid/view/View;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0, p1}, Lcom/alipay/android/app/render/api/ICashierProvider;->destroyWebView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public loadData(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/android/app/render/api/ICashierProvider;->loadData(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loadUrlWithWebView(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/render/api/ICashierProvider;->loadUrlWithWebView(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public openWebPage(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/render/api/ICashierProvider;->openWebPage(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public updateWebViewProperties(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
