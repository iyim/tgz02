.class Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$2;
.super Ljava/lang/Object;
.source "YearMonthPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 174
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$2;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    iput-boolean p2, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$2;->val$isYear:Z

    iput-boolean p3, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$2;->val$isUp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 177
    iget-object p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$2;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    iget-boolean v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$2;->val$isYear:Z

    invoke-static {p1, v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->access$002(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;Z)Z

    .line 178
    iget-object p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$2;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    iget-boolean v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$2;->val$isYear:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->access$102(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;Z)Z

    .line 180
    iget-object p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$2;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    iget-boolean v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$2;->val$isUp:Z

    invoke-static {p1, v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->access$202(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;Z)Z

    .line 181
    iget-object p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$2;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    iget-boolean v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$2;->val$isUp:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->access$302(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;Z)Z

    .line 183
    iget-object p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$2;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    iget-object p1, p1, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;

    iget-object v1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$2;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;-><init>(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
.end method
