.class Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$3;
.super Ljava/lang/Object;
.source "YearMonthPicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->setButtonAction(Landroid/widget/Button;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$3;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 190
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$3;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-static {p1}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->access$200(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 192
    iget-object p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$3;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-static {p1, v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->access$202(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;Z)Z

    .line 194
    :cond_1
    iget-object p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$3;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-static {p1}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->access$300(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 195
    iget-object p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$3;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-static {p1, v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->access$302(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;Z)Z

    :cond_2
    return v0
.end method
