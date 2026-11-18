.class Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider$1;
.super Ljava/lang/Object;
.source "CashierUiWidgetProvider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider;->createYearMounthPickerDialog(Landroid/content/Context;IILcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$YearMounthPickerCallback;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider;

.field final synthetic val$paramYearMounthPickerCallback:Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$YearMounthPickerCallback;

.field final synthetic val$picker:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider;Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$YearMounthPickerCallback;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider$1;->this$0:Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider;

    iput-object p2, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider$1;->val$picker:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;

    iput-object p3, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider$1;->val$paramYearMounthPickerCallback:Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$YearMounthPickerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider$1;->val$picker:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;

    iget-object v0, v0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->mDatePicker:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->getYear()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 115
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider$1;->val$picker:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;

    iget-object v0, v0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPickerDialog;->mDatePicker:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->getMonthStr(Z)Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider$1;->val$paramYearMounthPickerCallback:Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$YearMounthPickerCallback;

    invoke-interface {v1, p2, v0}, Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$YearMounthPickerCallback;->onPick(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
