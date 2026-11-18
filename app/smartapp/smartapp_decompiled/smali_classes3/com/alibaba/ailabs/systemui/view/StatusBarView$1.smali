.class Lcom/alibaba/ailabs/systemui/view/StatusBarView$1;
.super Ljava/lang/Object;
.source "StatusBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/systemui/view/StatusBarView;->initClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$1;->this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 163
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$1;->this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    invoke-static {p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->access$000(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const/4 p1, 0x0

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 164
    iget-object v2, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$1;->this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->access$102(Lcom/alibaba/ailabs/systemui/view/StatusBarView;I)I

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$1;->this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    invoke-static {v2}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->access$108(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)I

    .line 168
    iget-object v2, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$1;->this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    invoke-static {v2}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->access$100(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)I

    move-result v2

    const/4 v3, 0x7

    if-le v2, v3, :cond_1

    .line 169
    iget-object v2, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$1;->this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->access$102(Lcom/alibaba/ailabs/systemui/view/StatusBarView;I)I

    const-string p1, "StatusBarView"

    const-string v2, "navVersion: 4.3.4"

    .line 170
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$1;->this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->access$002(Lcom/alibaba/ailabs/systemui/view/StatusBarView;J)J

    return-void
.end method
