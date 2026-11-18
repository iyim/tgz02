.class Lcom/alibaba/ailabs/systemui/view/StatusBarView$3;
.super Ljava/lang/Object;
.source "StatusBarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/systemui/view/StatusBarView;->initClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private pressTime:J

.field final synthetic this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$3;->this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 206
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$3;->this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    invoke-static {p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->access$200(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$3;->this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    invoke-static {p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->access$300(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 209
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$3;->pressTime:J

    .line 211
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$3;->this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    invoke-static {p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->access$400(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 212
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$3;->this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    invoke-static {p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->access$500(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 214
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$3;->this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    invoke-static {p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->access$600(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 216
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, v1, :cond_5

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$3;->pressTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long p1, v2, v4

    if-gez p1, :cond_4

    .line 218
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$3;->this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    invoke-static {p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->access$400(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 219
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$3;->this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    invoke-static {p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->access$300(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->onItemClick(Landroid/view/View;)V

    goto :goto_0

    .line 221
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$3;->this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    invoke-static {p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->access$200(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->onItemClick(Landroid/view/View;)V

    .line 224
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$3;->this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    invoke-static {p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->access$600(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$3;->this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    invoke-static {p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->access$500(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 227
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$3;->this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    invoke-static {p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->access$600(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$3;->this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    invoke-static {p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->access$500(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return v1
.end method
