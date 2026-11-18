.class Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;
.super Ljava/lang/Object;
.source "YearMonthPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RptUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 274
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->access$200(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;)Z

    move-result v0

    const-wide/16 v1, 0x64

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->access$000(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->incrementYear()V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->access$100(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->incrementMonth()V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    iget-object v0, v0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;

    iget-object v4, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-direct {v3, v4}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;-><init>(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->access$300(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 285
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->access$000(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->decrementYear()V

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->access$100(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->decrementMonth()V

    .line 291
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    iget-object v0, v0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;

    iget-object v4, p0, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;

    invoke-direct {v3, v4}, Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker$RptUpdater;-><init>(Lcom/alipay/android/app/render/birdnest/widget/YearMonthPicker;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method
