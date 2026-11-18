.class Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;
.super Ljava/lang/Object;
.source "CircleIndicator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 234
    iget-object p3, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    invoke-static {p3}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->access$000(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 235
    iget-object p3, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    invoke-static {p3}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->access$100(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;)I

    move-result p3

    rem-int p3, p1, p3

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->access$100(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-lez p3, :cond_0

    .line 236
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->access$202(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;I)I

    goto :goto_0

    .line 238
    :cond_0
    iget-object p3, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    invoke-static {p3}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->access$300(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;)I

    move-result v0

    int-to-float v0, v0

    mul-float p2, p2, v0

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->access$100(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;)I

    move-result v0

    rem-int/2addr p1, v0

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->access$300(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;)I

    move-result v0

    mul-int p1, p1, v0

    int-to-float p1, p1

    add-float/2addr p2, p1

    float-to-int p1, p2

    invoke-static {p3, p1}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->access$202(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;I)I

    .line 240
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->invalidate()V

    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->access$000(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->access$100(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;)I

    move-result v0

    rem-int/2addr p1, v0

    .line 251
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->access$100(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;)I

    move-result v0

    rem-int/2addr p1, v0

    .line 253
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->access$300(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;)I

    move-result v1

    mul-int v1, v1, p1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->access$202(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;I)I

    .line 258
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->access$400(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;)Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;->SCALE:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;

    if-ne v0, v1, :cond_2

    .line 260
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->access$500(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->access$500(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 263
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 264
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    const/16 v2, 0x1001

    invoke-static {v1, v0, v2}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->access$600(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;Landroid/widget/ImageView;I)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 269
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 270
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    const/16 v2, 0x1002

    invoke-static {v1, v0, v2}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->access$600(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;Landroid/widget/ImageView;I)V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->access$502(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;I)I

    .line 274
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->invalidate()V

    :cond_3
    return-void
.end method
