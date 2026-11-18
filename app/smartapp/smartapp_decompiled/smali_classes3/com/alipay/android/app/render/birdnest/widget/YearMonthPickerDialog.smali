.class public Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;
.super Ljava/lang/Object;
.source "YearMonthPickerDialog.java"


# instance fields
.field public mDatePicker:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

.field public mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field public mNegativeLabel:Ljava/lang/String;

.field public mPositiveLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 28
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "alipay_template_express_year_month_picker"

    .line 29
    invoke-static {v2}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getLayoutId(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    .line 28
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "datePicker1"

    .line 32
    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    iput-object v1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->mDatePicker:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    .line 33
    iget-object v1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->mDatePicker:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-virtual {v1}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->disableBeforeYear()V

    .line 35
    invoke-virtual {p0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->hideDayPick()V

    .line 37
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 39
    iget-object p2, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 41
    iget-object p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string p1, "\u786e\u5b9a"

    .line 45
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->mPositiveLabel:Ljava/lang/String;

    const-string p1, "\u53d6\u6d88"

    .line 46
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->mNegativeLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public hideDayPick()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setCurrentDate()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->mDatePicker:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->setCurrentDate()V

    return-void
.end method

.method public setNegativeListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->mNegativeLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public setPositiveListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->mPositiveLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public setStartPickDate(II)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->mDatePicker:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->setYearMonth(II)V

    return-void
.end method

.method public show()Landroid/app/Dialog;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->create()Landroid/app/Dialog;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method
