.class Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider$2;
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


# direct methods
.method constructor <init>(Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider$2;->this$0:Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 123
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
