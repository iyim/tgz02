.class Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$1;
.super Ljava/lang/Object;
.source "YearMonthPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$isUp:Z

.field final synthetic val$isYear:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;ZZ)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$1;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    iput-boolean p2, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$1;->val$isUp:Z

    iput-boolean p3, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$1;->val$isYear:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 166
    iget-boolean p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$1;->val$isUp:Z

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$1;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    iget-boolean v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$1;->val$isYear:Z

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->increment(Z)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$1;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    iget-boolean v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$1;->val$isYear:Z

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->decrement(Z)V

    :goto_0
    return-void
.end method
